-- control.lua
local event = require("__flib__.event")
local migration = require("__flib__.migration")
local gui = require("__flib__.gui")

local s_migration = require("scripts.migrations")
local choose_tab = require("scripts.gui-templates.choose-tab")

local debug = false
local mod_name = script.mod_name

local default_data = {
    spawner_destoryed_after_drop = 0,
    choose_options = 3,
    tech_droped = 0
}
local powerups = {
    more_choise = { description = "More reward to choose", action = function(force)
        global.choose_options = global.choose_options + 1
        if debug then game.print("more_choise" .. " - " .. global.choose_options) end
    end },
    more_hp = { description = "Max health +10", action = function(force)
        force.character_health_bonus = force.character_health_bonus + 10
        if debug then game.print("more_hp" .. " - " .. force.character_health_bonus) end
    end },
    long_reach = { description = "Reach distance +10", action = function(force)
        force.character_reach_distance_bonus = force.character_reach_distance_bonus + 10
        if debug then game.print("long_reach" .. " - " .. force.character_reach_distance_bonus) end
    end },
    far_build = { description = "Build distance +10", action = function(force)
        force.character_build_distance_bonus = force.character_build_distance_bonus + 10
        if debug then game.print("far_build" .. " - " .. force.character_build_distance_bonus) end
    end },
    fast_run = { description = "Run speed +20%", action = function(force)
        force.character_running_speed_modifier = force.character_running_speed_modifier + 0.2
        if debug then game.print("fast_run" .. " - " .. force.character_running_speed_modifier) end
    end },
    inventory_slots = { description = "Inventory slot +5", action = function(force)
        force.character_inventory_slots_bonus = force.character_inventory_slots_bonus + 5
        if debug then game.print("inventory_slots" .. " - " .. force.character_inventory_slots_bonus) end
    end },
    trash_slots = { description = "Trash slot +5", action = function(force)
        force.character_trash_slot_count = force.character_trash_slot_count + 5
        if debug then game.print("trash_slots" .. " - " .. force.character_trash_slot_count) end
    end },
    crafting_speed = { description = "Crafting speed + 20%", action = function(force)
        for _, player in ipairs(force.players) do
            player.character_crafting_speed_modifier = player.character_crafting_speed_modifier + 0.2
            if debug then game.print("crafting_speed" ..
                    " - " .. player.name .. " - " .. player.character_crafting_speed_modifier)
            end
        end
    end }
}

-- COMMANDS
commands.add_command('sp', nil, function(comand)
    game.get_player(comand.player_index).get_main_inventory().insert({
        name = 'combat-shotgun',
        count = 1
    })
    game.get_player(comand.player_index).get_main_inventory().insert({
        name = 'piercing-shotgun-shell',
        count = 100
    })
    game.get_player(comand.player_index).force.character_health_bonus = 10000000
    game.get_player(comand.player_index).force.character_running_speed_modifier = 5
    game.get_player(comand.player_index).surface.spill_item_stack(
        game.get_player(comand.player_index).position,
        {
            name = 'technologies_data',
            count = 1
        },
        true
    )
end)
commands.add_command('re', nil, function(comand)
    for key, value in pairs(default_data) do
        global[key] = value
    end
end)

-- BOOTSTRAP

event.on_init(function()
    global.players = {}
    for key, value in pairs(default_data) do
        global[key] = value
    end
end)

event.on_configuration_changed(function(e)
    if migration.on_config_changed(e, s_migration) then

    end
    for key, value in pairs(default_data) do
        if not global[key] then
            global[key] = value
        end
    end
end)
event.on_player_created(function(e)
    global.players[e.player_index] = {}
    choose_tab.built(e.player_index)
end)

-- GUI
local function choose(e, tag)
    local player = game.get_player(e.player_index)
    if tag[mod_name].type == "technology"  then
        player.force.technologies[tag[mod_name].name].enabled = true
    end
    if tag.type == "powerup" then
        powerups[tag[mod_name].name].action(player.force)
    end

    global.players[e.player_index][choose_tab.name].refs.window.visible = false
    if player.opened then
        player.opened = nil
      end
end
gui.hook_events(function(e)
    local action = gui.read_action(e)
  if not action then
    return
end
    
if action == "choose" then
    choose(e, e.element.tags )
end
end)

script.on_event(defines.events.on_script_trigger_effect, function(event)
    if event.effect_id == "spawner_destroyed" then
        if global.spawner_destoryed_after_drop >= global.tech_droped then
            game.get_surface(event.surface_index).spill_item_stack(
                event.source_entity.position,
                {
                    name = 'technologies_data',
                    count = 1
                },
                true
            )
            global.tech_droped = global.tech_droped + 1
            global.spawner_destoryed_after_drop = 0
        else
            global.spawner_destoryed_after_drop = global.spawner_destoryed_after_drop + 1
        end
    end

end)

script.on_event(defines.events.on_player_main_inventory_changed, function(event)
    local player = game.get_player(event.player_index)
    
    local itemCount = player.get_main_inventory().remove({
        name = 'technologies_data',
        count = 1
    })
    if itemCount > 0 then
        local prototypes = game.get_filtered_technology_prototypes { {
            filter = 'has-prerequisites',
            invert = true
        } }
        local names = {}
        for _, val in pairs(prototypes) do
            if player.force.technologies[val.name].enabled == false then
                table.insert(names, val.name)
            end
        end
        local technology_to_choose = math.random(1, global.choose_options)
        local random_technology_name = {}
        if #names > 0 then
            if #names <= technology_to_choose then
                random_technology_name = names
            else
                local n = 0;
                while technology_to_choose ~= n do
                    local r = math.random(1, #names)
                    if random_technology_name[r] == nil then
                        random_technology_name[r] = names[r]
                        n = n + 1
                    end
                end
            end

        end

        -----
        local sprite_buttons = {}

        for _, random_name in pairs(random_technology_name) do
            local prototype = prototypes[random_name]
            table.insert(sprite_buttons, {
                name = random_name,
                type = "technology",
                tooltip = prototype.localised_description,
                sprite = 'technology/'.. random_name,
            })
        end

        for i = 1, global.choose_options - technology_to_choose do
            local power_up_keys = {}
            for k, _ in pairs(powerups) do
                table.insert(power_up_keys, k)
            end
            local random_power_up_key = power_up_keys[math.random(#power_up_keys)]
            table.insert(sprite_buttons, {
                name = random_power_up_key,
                type = "powerup",
                tooltip = powerups[random_power_up_key].description,
                sprite = mod_name.."_"..random_power_up_key.."_sprite",
            })
        end
        local refs = global.players[event.player_index][choose_tab.name].refs
        local gui = refs.window
        gui.visible = true
        gui.bring_to_front()
        gui.force_auto_center()
        player.opened = gui
        choose_tab.open(refs.flow , sprite_buttons)

    end
end)
