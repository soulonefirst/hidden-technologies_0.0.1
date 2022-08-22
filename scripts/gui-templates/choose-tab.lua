local gui = require("__flib__.gui")
local mod_name = script.mod_name

local template = {

    frame = {
        type = "frame",
        name = "choose_menu",
        direction = "horizontal",
        caption = 'Choose reward',
        visible = true,
        ref = { "window" },
        actions = {
            --on_closed = { gui = "choose_menu" },
        }
    },
    flow = {
        type = 'flow',
        direction = 'horizontal',
        style = mod_name .. "_flow_style",
        ref = { "flow" },
        actions = {
            --on_click = { gui = "choose_menu"},
        }
    },
    sprite_button = {
        type = 'sprite-button',
        sprite = "",
        tooltip = "",
        style = mod_name .. "_button_style",
        actions = {
            on_click = { },
        }
    }
}

--- @param sprite_buttons_data table name, tooltip, action
local function show(sprite_buttons_data, player)
    
    local flow = template.flow    
    
    for _, value in ipairs(sprite_buttons_data) do
        local button = {}
        for k, v in pairs(template.sprite_button) do button[k] = v end
        button.sprite = value.sprite
        button.tooltip = value.tooltip
        button.actions.on_click = {gui = "choose_menu", name = value.name, type = value.type}
        flow[#flow+1] = button
    end    

    local frame = template.frame
    frame[#frame+1] = flow

    local refs = gui.build(player.gui.screen, {frame})
    refs.window.force_auto_center()
    refs.window.bring_to_front()
    return refs
end

return show
