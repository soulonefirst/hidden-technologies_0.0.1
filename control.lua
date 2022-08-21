-- control.lua
local choose_frame = nil
local debug = false
local powerups = {
    more_choise = { description = "More reward to choose", action = function(force)
        global.choose_options = global.choose_options + 1
        if debug then game.print("more_choise".." - "..global.choose_options) end
    end },
    more_hp = { description = "Max health +10", action = function(force)
        force.character_health_bonus = force.character_health_bonus + 10
        if debug then game.print("more_hp".." - "..force.character_health_bonus) end
    end },
    long_reach = { description = "Reach distance +10", action = function(force)
        force.character_reach_distance_bonus = force.character_reach_distance_bonus + 10
        if debug then game.print("long_reach".." - "..force.character_reach_distance_bonus) end
    end },
    far_build = { description = "Build distance +10", action = function(force)
        force.character_build_distance_bonus = force.character_build_distance_bonus + 10
        if debug then game.print("far_build".." - "..force.character_build_distance_bonus) end
    end },
    fast_run = { description = "Run speed +20%", action = function(force)
        force.character_running_speed_modifier = force.character_running_speed_modifier + 0.2
        if debug then game.print("fast_run".." - "..force.character_running_speed_modifier) end
    end },
    inventory_slots = { description = "Inventory slot +5", action = function(force)
        force.character_inventory_slots_bonus = force.character_inventory_slots_bonus + 5
        if debug then game.print("inventory_slots".." - "..force.character_inventory_slots_bonus) end
    end },
    trash_slots = { description = "Trash slot +5", action = function(force)
        force.character_trash_slot_count = force.character_trash_slot_count + 5
        if debug then game.print("trash_slots".." - "..force.character_trash_slot_count) end
    end },
    crafting_speed = { description = "Crafting speed + 20%", action = function(force)
        for _, player in ipairs(force.players) do            
            player.character_crafting_speed_modifier = player.character_crafting_speed_modifier + 0.2
            if debug then game.print("crafting_speed".." - "..player.name.." - "..player.character_crafting_speed_modifier) end
        end
    end }
}

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

local default_data = {
    players = {},
    spawner_destoryed_after_drop = 0,
    choose_options = 3,
    tech_droped = 0
}
script.on_init(function()
    for key, value in pairs(default_data) do
        global[key] = value
    end
end)

script.on_load(function()
    for key, value in pairs(default_data) do
        if not global[key] then
            global[key] = value            
        end
    end
end)

script.on_event(defines.events.on_player_created, function(event)
    global.players[event.player_index] = {}
end)

script.on_event(defines.events.on_gui_click, function(event)
    if event.element.tags.action == 'choose_technology' then
        game.get_player(event.player_index).force.technologies[event.element.tags.name].enabled = true
        if global.players[event.player_index].choose_frame_open then
            choose_frame.destroy()
            global.players[event.player_index].choose_frame_open = nil
        end
    elseif event.element.tags.action == "choose_power_up" then
        powerups[event.element.tags.name].action(game.get_player(event.player_index).force)
        if global.players[event.player_index].choose_frame_open then
            choose_frame.destroy()
            global.players[event.player_index].choose_frame_open = nil
        end
    end
end)

script.on_event(defines.events.on_script_trigger_effect, function(event)
    if event.effect_id == "spawner_destroyed" then            
        if  global.spawner_destoryed_after_drop >= global.tech_droped  then
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
            if global.players[event.player_index].choose_frame_open ~= nil then
                choose_frame.destroy()                
            end
            global.players[event.player_index].choose_frame_open = true
            local screen_element = player.gui.screen
            choose_frame = screen_element.add {
                type = 'frame',
                name = 'ht_choose_frame',
                caption = 'Choose reward',
                style = "ht_choose_frame_style"
            }
            choose_frame.auto_center = true

            local content_frame = choose_frame.add {
                type = 'frame',
                name = 'ht_content_frame',
                direction = 'vertical',
                style = "ht_content_frame_style"
            }
            local controls_flow = content_frame.add {
                type = 'flow',
                name = 'ht_controls_flow',
                direction = 'horizontal',
                style = "ht_controls_flow_style"
            }
            for _, random_name in pairs(random_technology_name) do
                local prototype = prototypes[random_name]
                local prototypy_name = prototype.name
                controls_flow.add {
                    type = 'sprite-button',
                    tags = {
                        action = "choose_technology",
                        name = prototypy_name
                    },
                    sprite = 'technology/' .. prototypy_name,
                    tooltip = prototype.localised_description,
                    style = "ht_choose_button_style"
                }
            end
        for i = 1, global.choose_options - technology_to_choose do
            local power_up_keys = {}
            for k, _ in pairs(powerups) do
                table.insert(power_up_keys, k)
            end
            local random_power_up_key = power_up_keys[math.random(#power_up_keys)]
            controls_flow.add {
                type = 'sprite-button',
                tags = {
                    action = "choose_power_up",
                    name = random_power_up_key
                },
                sprite = "ht_" .. random_power_up_key .. "_sprite",
                tooltip = powerups[random_power_up_key].description,
                style = "ht_choose_button_style"
            }
        end

    end
end)
