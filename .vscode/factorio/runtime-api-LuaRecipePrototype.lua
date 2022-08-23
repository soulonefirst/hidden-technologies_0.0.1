---@meta
---@diagnostic disable

--$Factorio 1.1.61
--$Overlay 5
--$Section LuaRecipePrototype
-- This file is automatically generated. Edits will be overwritten.

---A crafting recipe prototype.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html)
---@class LuaRecipePrototype:LuaObject
---[R]  
---If this recipe is enabled for the purpose of intermediate hand-crafting.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.allow_as_intermediate)
---@field allow_as_intermediate boolean 
---[R]  
---Is this recipe allowed to be broken down for the recipe tooltip "Total raw" calculations?
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.allow_decomposition)
---@field allow_decomposition boolean 
---[R]  
---If the recipe is allowed to have the extra inserter overload bonus applied (4 * stack inserter stack size).
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.allow_inserter_overload)
---@field allow_inserter_overload boolean 
---[R]  
---If this recipe is allowed to use intermediate recipes when hand-crafting.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.allow_intermediates)
---@field allow_intermediates boolean 
---[R]  
---Should this recipe always show "Made in" in the tooltip?
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.always_show_made_in)
---@field always_show_made_in boolean 
---[R]  
---If the products are always shown in the recipe tooltip.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.always_show_products)
---@field always_show_products boolean 
---[R]  
---Category of the recipe.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.category)
---@field category string 
---[R]  
---The emissions multiplier for this recipe.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.emissions_multiplier)
---@field emissions_multiplier double 
---[R]  
---If this recipe prototype is enabled by default (enabled at the beginning of a game).
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.enabled)
---@field enabled boolean 
---[R]  
---Energy required to execute this recipe. This directly affects the crafting time: Recipe's energy is exactly its crafting time in seconds, when crafted in an assembling machine with crafting speed exactly equal to one.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.energy)
---@field energy double 
---[R]  
---Group of this recipe.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.group)
---@field group LuaGroup 
---[R]  
---Is the recipe hidden? Hidden recipe don't show up in the crafting menu.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.hidden)
---@field hidden boolean 
---[R]  
---Is the recipe hidden from flow statistics (item/fluid production statistics)?
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.hidden_from_flow_stats)
---@field hidden_from_flow_stats boolean 
---[R]  
---Is the recipe hidden from player crafting? The recipe will still show up for selection in machines.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.hidden_from_player_crafting)
---@field hidden_from_player_crafting boolean 
---[R]  
---Ingredients for this recipe.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.ingredients)
---@field ingredients Ingredient[] 
---[R]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.localised_description)
---@field localised_description LocalisedString 
---[R]  
---Localised name of the recipe.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.localised_name)
---@field localised_name LocalisedString 
---[R]  
---The main product of this recipe, `nil` if no main product is defined.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.main_product)
---@field main_product Product 
---[R]  
---Name of the recipe. This can be different than the name of the result items as there could be more recipes to make the same item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.name)
---@field name string 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.object_name)
---@field object_name string 
---[R]  
---The string used to alphabetically sort these prototypes. It is a simple string that has no additional semantic meaning.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.order)
---@field order string 
---[R]  
---Used to determine how many extra items are put into an assembling machine before it's considered "full enough".
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.overload_multiplier)
---@field overload_multiplier uint 
---[R]  
---The results of this recipe.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.products)
---@field products Product[] 
---[R]  
---The multiplier used when this recipe is copied from an assembling machine to a requester chest. For each item in the recipe the item count * this value is set in the requester chest.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.request_paste_multiplier)
---@field request_paste_multiplier uint 
---[R]  
---If the amount is shown in the recipe tooltip title when the recipe produces more than 1 product.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.show_amount_in_title)
---@field show_amount_in_title boolean 
---[R]  
---Subgroup of this recipe.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.subgroup)
---@field subgroup LuaGroup 
---[R]  
---Is this recipe unlocks the result item(s) so they're shown in filter-select GUIs.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.unlock_results)
---@field unlock_results boolean 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.valid)
---@field valid boolean 
local LuaRecipePrototype={
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaRecipePrototype.html#LuaRecipePrototype.help)
---@return string
help=function()end,
}


