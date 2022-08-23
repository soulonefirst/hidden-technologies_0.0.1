local gui = require("__flib__.gui")
local mod_name = script.mod_name

local choose_tab = {
    name = "choose_tab"
}
function choose_tab.built(player_index)
    local player = game.get_player(player_index)

    local refs = gui.build(player.gui.screen, {
        {
            type = "frame",
            name = choose_tab.name,
            direction = "horizontal",
            caption = 'Choose reward',
            visible = false,
            ref = { "window" },
            {
                type = 'flow',
                direction = 'horizontal',
                style = mod_name .. "_flow_style",
                ref = { "flow" }
            }
        }
    })

    global.players[player_index][choose_tab.name] = {
        refs = refs
    }

    refs.window.visible = false
end

function choose_tab.open(flow, sprite_buttons_data)
    local i = 1
    local children = flow.children
    for _, button_data in ipairs(sprite_buttons_data) do
        if not children[i] then
            gui.add(flow, 
                {
                    type = 'sprite-button',
                    sprite = button_data.sprite,
                    tooltip = button_data.tooltip,
                    style = mod_name .. "_button_style",
                    actions = {
                        on_click = "choose"
                    },
                    tags = { name = button_data.name, type = button_data.type }
                }
            )
        else
            gui.update(children[i], 
                {
                    elem_mods = {
                        sprite = button_data.sprite,
                        tooltip = button_data.tooltip
                    },
                    tags = { name = button_data.name, type = button_data.type }
                
            })
        end
        i = i + 1
    end
    for j = i + 1, #children do
        children[i][j].destroy()
    end
end

return choose_tab
