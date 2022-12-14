---@meta
---@diagnostic disable

--$Factorio 1.1.61
--$Overlay 5
--$Section LuaElectricEnergySourcePrototype
-- This file is automatically generated. Edits will be overwritten.

---Prototype of an electric energy source.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html)
---@class LuaElectricEnergySourcePrototype:LuaObject
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html#LuaElectricEnergySourcePrototype.buffer_capacity)
---@field buffer_capacity double 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html#LuaElectricEnergySourcePrototype.drain)
---@field drain double 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html#LuaElectricEnergySourcePrototype.emissions)
---@field emissions double 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html#LuaElectricEnergySourcePrototype.input_flow_limit)
---@field input_flow_limit double 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html#LuaElectricEnergySourcePrototype.object_name)
---@field object_name string 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html#LuaElectricEnergySourcePrototype.output_flow_limit)
---@field output_flow_limit double 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html#LuaElectricEnergySourcePrototype.render_no_network_icon)
---@field render_no_network_icon boolean 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html#LuaElectricEnergySourcePrototype.render_no_power_icon)
---@field render_no_power_icon boolean 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html#LuaElectricEnergySourcePrototype.usage_priority)
---@field usage_priority string 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html#LuaElectricEnergySourcePrototype.valid)
---@field valid boolean 
local LuaElectricEnergySourcePrototype={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaElectricEnergySourcePrototype.html#LuaElectricEnergySourcePrototype.help)
---@return string
help=function()end,
}


