for _, prototype in pairs(data.raw["assembling-machine"]) do
    --quality programming
    local _, _, proto_name, proto_number = string.find(prototype.name, "(.+)-(%d+)$")

    if not proto_name or not proto_number then
        ::continue::
    end

    if proto_name == "se-space-supercomputer" then
        prototype.working_sound =
        {
          sound = {
            {
              filename = "__RainWorld-se-supercomputer-sound__/sound/rw-randomGods.ogg",
              volume = 0.7
            },
          },
          fade_in_ticks = 60,
          fade_out_ticks = 60,
          max_sounds_per_type = 2,
        }
    end
end
