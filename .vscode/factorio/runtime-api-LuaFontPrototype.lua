---@meta
---@diagnostic disable

--$Factorio 1.1.61
--$Overlay 5
--$Section LuaFontPrototype
-- This file is automatically generated. Edits will be overwritten.

---Prototype of a font.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaFontPrototype.html)
---@class LuaFontPrototype:LuaObject
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaFontPrototype.html#LuaFontPrototype.border)
---@field border boolean 
---[R]  
---The border color or `nil` if not set.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaFontPrototype.html#LuaFontPrototype.border_color)
---@field border_color Color 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaFontPrototype.html#LuaFontPrototype.filtered)
---@field filtered boolean 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaFontPrototype.html#LuaFontPrototype.from)
---@field from string 
---[R]  
---Name of this prototype.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaFontPrototype.html#LuaFontPrototype.name)
---@field name string 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaFontPrototype.html#LuaFontPrototype.object_name)
---@field object_name string 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaFontPrototype.html#LuaFontPrototype.size)
---@field size int 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaFontPrototype.html#LuaFontPrototype.spacing)
---@field spacing float 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaFontPrototype.html#LuaFontPrototype.valid)
---@field valid boolean 
local LuaFontPrototype={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaFontPrototype.html#LuaFontPrototype.help)
---@return string
help=function()end,
}


