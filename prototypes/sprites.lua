ICONPATH = "__hidden-technologies__/graphics/"
local mod_name = "hidden-technologies"

local attributesList = {
  "technology_data",
  "far_build",
  "fast_run",
  "inventory_slots",
  "long_reach",
  "more_hp",
  "trash_slots",
  "more_choise",
  "crafting_speed"
}

local function createSprite(att)
  local p = {}
  p.type = "sprite"
  p.name = mod_name.."_"..att .. "_sprite"
  p.filename = ICONPATH .. att .. "_icon.png"
  --p.priority = "extra-high-no-scale"
  p.width = 128
  p.height = 128
  p.scale = 0.5

  data:extend({p})
end

for a=1,#attributesList do
  createSprite(attributesList[a])
end
