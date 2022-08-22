local gui = require("__flib__.gui")
local event = require("__flib__.event")

local event_id_to_string_mapping = {}

local gui_data = {
    on_button_click = event.generate_id(),
    plyers = {{}}
}

gui.hook_events(function(e)
    local elem =e.element
  if not elem or not elem.valid then
    return
  end

  local mod_tags = elem.tags[script.mod_name]
  if not mod_tags then
    return
  end

  local elem_actions = mod_tags.flib
  if not elem_actions then
    return
  end

  local event_name = event_id_to_string_mapping[elem.name]
  local msg = elem_actions[event_name]
  game.print(e.element.tags[script.mod_name].gui)

  if not msg then
    return
end
    event.raise(gui_data.on_button_click, { event = e, msg = msg })
end)

event.on_init(function()
    gui_data.refresh()
end)
event.on_configuration_changed(function(e)
    gui_data.refresh()
end)
function gui_data.refresh()
    for _, p in pairs(game.players) do
        global.players[p.index].gui = {}
    end
end

function gui_data.add(gui, player_index)
    local gui_name = gui.window.name
    if not global.players[player_index].gui[gui_name] then
        global.players[player_index].gui[gui_name] = true
        gui_data.plyers[player_index][gui_name] = gui.window
    end
end

function gui_data.delete(gui_name, player_index)
    if not global.players[player_index].gui[gui_name] then
        return
    end
    global.players[player_index].gui[gui_name] = nil
    gui_data.plyers[player_index][gui_name].destroy()
end

return gui_data
