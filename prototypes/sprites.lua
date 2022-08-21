ICONPATH = "__hidden-technologies__/graphics/"

local attributesList = {
  "ht_technology_data",
  "ht_far_build",
  "ht_fast_run",
  "ht_inventory_slots",
  "ht_long_reach",
  "ht_more_hp",
  "ht_trash_slots",
  "ht_more_choise",
  "ht_crafting_speed"
}

local function createSprite(att)
  local p = {}
  p.type = "sprite"
  p.name = att .. "_sprite"
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
