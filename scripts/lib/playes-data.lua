local players_data = {}


function players_data:init()
  global.players = {}
  for _, p in pairs(game.players) do
    self.add(p.index)
  end
end

function players_data:load()
  for _, p in pairs(game.players) do
    if not self.get_table(p.index) then
      self.add(p.index)
    end
  end
end

function players_data:get(index)
  return game.get_player(index)
end

function players_data:get_table(index)
  return global.players[index]
end

function players_data:add(index)
  global.players[index] = {}
end

function players_data:all()
  return global.players
end

return players_data
