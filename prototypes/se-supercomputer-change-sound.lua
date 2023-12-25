for _, prototype in pairs(data.raw["assembling-machine"]) do
    --quality programming
    local file_prefix = "__RainWorld-se-supercomputer-sound__/sound/rw-randomGods-sc-"
    local _, _, proto_name, proto_number = string.find(prototype.name, "(.+)-(%d+)$")

    if settings.startup["debug"].value then
      log('parse '..prototype.name)
    end

    if proto_name and proto_number then
      if proto_name == "se-space-supercomputer" then
      --just to check the code logic and reduce loading time
      --if proto_name == "assembling-machine" then
        if settings.startup["debug"].value then
          log('found prototype '..proto_name..' with number '..proto_number..', change sound')
        end

        prototype.working_sound =
        {
          sound = {
            {
              --here I rewrite the entire prototype with music for the “highest tier”, 
              --but below I manually rewrite this line for tier 1 to 3
              filename = file_prefix.."4.ogg",
              volume = settings.startup["volume"].value
            },
          },
          fade_in_ticks = 30,
          fade_out_ticks = 30,
          use_doppler_shift = settings.startup["use_doppler_shift"].value,
          --this particular sound is very bad for random playback and I can't find a way to sync it(thanks wube),
          --https://mods.factorio.com/mod/LabDansen/discussion/5f57d24e583b0dbdf3587194
          --so that makes things a lot better
          max_sounds_per_type = settings.startup["default-max_sounds_per_type"].value
        }

        proto_number = tonumber(proto_number)
        if proto_number >= 1 and proto_number <= 3 then
          prototype.working_sound.sound.filename = file_prefix..tostring(proto_number)..".ogg"
          --Also, the structure above is the default sound, so I need to set limit to default
          prototype.working_sound.max_sounds_per_type = nil
        end

        if not settings.startup["use_simple_sound_system"].value then
          --the new system creates hidden entities that make sound, so we need to turn off external(not into gui) sound on computers
          if settings.startup["debug"].value then
            log('use_simple_sound_system is disabled, apply tweaks')
          end
          prototype.working_sound.audible_distance_modifier = 0
        end
      end
    end
end
