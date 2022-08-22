

for _, tech in pairs(data.raw["technology"]) do
  tech.visible_when_disabled = false
  tech.enabled = false
end
data.raw["unit-spawner"]["biter-spawner"].dying_trigger_effect = {type ="script",effect_id ="spawner_destroyed"}
data.raw["unit-spawner"]["spitter-spawner"].dying_trigger_effect = {type ="script",effect_id ="spawner_destroyed"}


data:extend{
  {
    type = "item",
    name = 'technologies_data',
    icon = "__hidden-technologies__/graphics/technology_data_icon.png",
    icon_size = 128,
    pictures =
    {
      { size = 128, filename = "__hidden-technologies__/graphics/technology_data_icon.png", scale = 0.4},
    },
    
    stack_size = 1
  }
}