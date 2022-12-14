---@meta
---@diagnostic disable

--$Factorio 1.1.61
--$Overlay 5
--$Section LuaArithmeticCombinatorControlBehavior
-- This file is automatically generated. Edits will be overwritten.

---Control behavior for arithmetic combinators.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaArithmeticCombinatorControlBehavior.html)
---@class LuaArithmeticCombinatorControlBehavior:LuaCombinatorControlBehavior
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaArithmeticCombinatorControlBehavior.html#LuaArithmeticCombinatorControlBehavior.object_name)
---@field object_name string 
---[RW]  
---This arithmetic combinator's parameters.
---
---**Note:** Writing `nil` clears the combinator's parameters.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaArithmeticCombinatorControlBehavior.html#LuaArithmeticCombinatorControlBehavior.parameters)
---@field parameters ArithmeticCombinatorParameters 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaArithmeticCombinatorControlBehavior.html#LuaArithmeticCombinatorControlBehavior.valid)
---@field valid boolean 
local LuaArithmeticCombinatorControlBehavior={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaArithmeticCombinatorControlBehavior.html#LuaArithmeticCombinatorControlBehavior.help)
---@return string
help=function()end,
}


