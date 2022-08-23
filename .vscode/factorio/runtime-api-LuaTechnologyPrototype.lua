---@meta
---@diagnostic disable

--$Factorio 1.1.61
--$Overlay 5
--$Section LuaTechnologyPrototype
-- This file is automatically generated. Edits will be overwritten.

---A Technology prototype.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html)
---@class LuaTechnologyPrototype:LuaObject
---[R]  
---Effects applied when this technology is researched.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.effects)
---@field effects TechnologyModifier[] 
---[R]  
---If this technology prototype is enabled by default (enabled at the beginning of a game).
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.enabled)
---@field enabled boolean 
---[R]  
---If this technology prototype is hidden.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.hidden)
---@field hidden boolean 
---[R]  
---If this technology ignores the technology cost multiplier setting.
---
---**Note:** [LuaTechnologyPrototype::research_unit_count](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.research_unit_count) will already take this setting into account.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.ignore_tech_cost_multiplier)
---@field ignore_tech_cost_multiplier boolean 
---[R]  
---The level of this research.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.level)
---@field level uint 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.localised_description)
---@field localised_description LocalisedString 
---[R]  
---Localised name of this technology.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.localised_name)
---@field localised_name LocalisedString 
---[R]  
---The max level of this research.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.max_level)
---@field max_level uint 
---[R]  
---Name of this technology.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.name)
---@field name string 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.object_name)
---@field object_name string 
---[R]  
---The string used to alphabetically sort these prototypes. It is a simple string that has no additional semantic meaning.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.order)
---@field order string 
---[R]  
---Prerequisites of this technology. The result maps technology name to the [LuaTechnologyPrototype](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html) object.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.prerequisites)
---@field prerequisites {[string]: LuaTechnologyPrototype} 
---[R]  
---The number of research units required for this technology.
---
---**Note:** This is multiplied by the current research cost multiplier, unless [LuaTechnologyPrototype::ignore_tech_cost_multiplier](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.ignore_tech_cost_multiplier) is `true`.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.research_unit_count)
---@field research_unit_count uint 
---[R]  
---The count formula used for this infinite research or nil if this isn't an infinite research.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.research_unit_count_formula)
---@field research_unit_count_formula string 
---[R]  
---Amount of energy required to finish a unit of research.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.research_unit_energy)
---@field research_unit_energy double 
---[R]  
---The types of ingredients that labs will require to research this technology.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.research_unit_ingredients)
---@field research_unit_ingredients Ingredient[] 
---[R]  
---If the is technology prototype is an upgrade to some other technology.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.upgrade)
---@field upgrade boolean 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.valid)
---@field valid boolean 
---[R]  
---If this technology will be visible in the research GUI even though it is disabled.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.visible_when_disabled)
---@field visible_when_disabled boolean 
local LuaTechnologyPrototype={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTechnologyPrototype.html#LuaTechnologyPrototype.help)
---@return string
help=function()end,
}


