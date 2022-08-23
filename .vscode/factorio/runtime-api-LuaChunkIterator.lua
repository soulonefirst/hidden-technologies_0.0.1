---@meta
---@diagnostic disable

--$Factorio 1.1.61
--$Overlay 5
--$Section LuaChunkIterator
-- This file is automatically generated. Edits will be overwritten.

---A chunk iterator can be used for iterating chunks coordinates of a surface.
---
---The returned type is a [ChunkPositionAndArea](https://lua-api.factorio.com/latest/Concepts.html#ChunkPositionAndArea) containing the chunk coordinates and its area.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaChunkIterator.html)
---
---### Example
---```
---for chunk in some_surface.get_chunks() do
---  game.player.print("x: " .. chunk.x .. ", y: " .. chunk.y)
---  game.player.print("area: " .. serpent.line(chunk.area))
---end
---```
---@class LuaChunkIterator.__index:LuaObject
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaChunkIterator.html#LuaChunkIterator.object_name)
---@field object_name string 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaChunkIterator.html#LuaChunkIterator.valid)
---@field valid boolean 
local LuaChunkIterator={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaChunkIterator.html#LuaChunkIterator.help)
---@return string
help=function()end,
}

---Gets the next chunk position if the iterator is not yet done and increments the it.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaChunkIterator.html#LuaChunkIterator.operator%20())
---@alias LuaChunkIterator.__call fun():ChunkPositionAndArea
---@alias LuaChunkIterator LuaChunkIterator.__index|LuaChunkIterator.__call


