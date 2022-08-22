local event = require("__flib__.event")
local players_data = {}

event.on_player_created(function(e)
  players_data.add(e.player_index)
end)

event.on_player_removed(function(e)
  global.players[e.player_index] = nil
end)

event.on_player_joined_game(function(e)
end)

event.on_player_left_game(function(e)
end)

function players_data.get(index)
  return game.get_player(index)
end

function players_data.get_table(index)
  return global.players[index]
end

function players_data.add(index)
  if not global.players then
    global.players = {}
  end
  global.players[index] = {}
end

function players_data.all()
  return global.players
end

return players_data

