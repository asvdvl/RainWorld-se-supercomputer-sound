local file_prefix = "__RainWorld-se-supercomputer-sound__/sound/rw-randomGods-sc-"
data:extend{
    {
    type = "simple-entity",
    name = "sound-emitter",
    icon = "__base__/graphics/icons/programmable-speaker.png",
    icon_size = 64,
    working_sound = {
        sound = {
              filename = file_prefix.."4.ogg",
              volume = 1
            },
        persistent = true,
    },
    selection_box = { {-2.5, -2.5}, {2.5, 2.5} },
    flags = {
        "placeable-neutral",
        --"not-deconstructable",
        "not-blueprintable"
        --"not-rotatable",
        --"placeable-off-grid",
        --"not-repairable",
        --"not-on-map",
        --"not-blueprintable",
        --"not-deconstructable",
        --"hidden",
        --"hide-alt-info",
        --"not-flammable",
        --"not-in-kill-statistics",
    },
    picture =
    {
      filename = "__base__/graphics/icons/programmable-speaker.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      shift = {0.0, 0.0}
    }
  }
}
