

for _, tech in pairs(data.raw["technology"]) do
  tech.visible_when_disabled = false
  tech.enabled = false
end
data.raw["unit-spawner"]["biter-spawner"].dying_trigger_effect = {type ="script",effect_id ="spawner_destroyed"}
data.raw["unit-spawner"]["spitter-spawner"].dying_trigger_effect = {type ="script",effect_id ="spawner_destroyed"}

local crash_site_objects ={"big-ship-wreck-1",
"big-ship-wreck-2",
"big-ship-wreck-3",
"crash-site-chest-",
"crash-site-chest-",
"crash-site-spaceship",
"crash-site-spaceship-wreck-big-1",
"crash-site-spaceship-wreck-big-2",
"crash-site-spaceship-wreck-medium-1",
"crash-site-spaceship-wreck-medium-2",
"crash-site-spaceship-wreck-medium-3",
"factorio-logo-11tiles",
"factorio-logo-16tiles",
"factorio-logo-22tiles",}

for _, value in ipairs(crash_site_objects) do
  
end
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