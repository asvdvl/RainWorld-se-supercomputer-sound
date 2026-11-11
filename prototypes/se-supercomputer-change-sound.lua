local fssm = require("__factorio-sync-sound-manager__/prototypes/api")
local file_prefix = "__RainWorld-se-supercomputer-sound__/sound/rw-randomGods-sc-"

local volume = settings.startup["RWsss_volume"].value

local function apply_sound(proto, suffix)
    local work_sound = file_prefix .. suffix .. ".ogg"
    fssm.applyNewSound(proto, work_sound, volume)
    log("[RainWorld-se-supercomputer-sound] applied " .. work_sound .. " to " .. proto.name)
end

for _, prototype in pairs(data.raw["assembling-machine"]) do
    local _, _, proto_name, proto_number = string.find(prototype.name, "(.+)-(%d+)$")
    if proto_name == "se-space-supercomputer" then
        local number = tonumber(proto_number) or 0
        local suffix = (number >= 1 and number <= 4) and tostring(number) or "4"
        apply_sound(prototype, suffix)
    end
end
