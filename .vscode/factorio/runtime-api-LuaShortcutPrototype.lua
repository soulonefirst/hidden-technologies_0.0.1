---@meta
---@diagnostic disable

--$Factorio 1.1.61
--$Overlay 5
--$Section LuaShortcutPrototype
-- This file is automatically generated. Edits will be overwritten.

---Prototype of a shortcut.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html)
---@class LuaShortcutPrototype:LuaObject
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.action)
---@field action string 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.associated_control_input)
---@field associated_control_input string 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.item_to_spawn)
---@field item_to_spawn LuaItemPrototype 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.localised_description)
---@field localised_description LocalisedString 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.localised_name)
---@field localised_name LocalisedString 
---[R]  
---Name of this prototype.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.name)
---@field name string 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.object_name)
---@field object_name string 
---[R]  
---The string used to alphabetically sort these prototypes. It is a simple string that has no additional semantic meaning.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.order)
---@field order string 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.technology_to_unlock)
---@field technology_to_unlock LuaTechnologyPrototype 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.toggleable)
---@field toggleable boolean 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.valid)
---@field valid boolean 
local LuaShortcutPrototype={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaShortcutPrototype.html#LuaShortcutPrototype.help)
---@return string
help=function()end,
}


