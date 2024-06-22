local fssm = require("__factorio-sync-sound-manager__/prototypes/api")
local file_prefix = "__RainWorld-se-supercomputer-sound__/sound/rw-randomGods-sc-"

for _, prototype in pairs(data.raw["assembling-machine"]) do
    local _, _, proto_name, proto_number = string.find(prototype.name, "(.+)-(%d+)$")
    if proto_name and proto_name == "assembling-machine" then --se-space-supercomputer
        work_sound = file_prefix.."4.ogg"
        
        proto_number = (proto_number and tonumber(proto_number)) or 0
        if proto_number >= 1 and proto_number <= 4 then
            work_sound = file_prefix..tostring(proto_number)..".ogg"
        end
        fssm.applyNewSound(prototype, work_sound)
    end
end
