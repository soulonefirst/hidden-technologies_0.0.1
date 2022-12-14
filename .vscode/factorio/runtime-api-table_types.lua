---@meta
---@diagnostic disable

--$Factorio 1.1.61
--$Overlay 5
--$Section table_types
-- This file is automatically generated. Edits will be overwritten.

---[View documentation](https://lua-api.factorio.com/latest/LuaBootstrap.html#LuaBootstrap.level)
---@class LuaBootstrap.level
---Is this level a simulation? (The main menu and 'Tips and tricks' use simulations)
---
---[View documentation](https://lua-api.factorio.com/latest/LuaBootstrap.html#LuaBootstrap.level)
---@field is_simulation? boolean 
---Is this level a tutorial?
---
---[View documentation](https://lua-api.factorio.com/latest/LuaBootstrap.html#LuaBootstrap.level)
---@field is_tutorial? boolean 
---The campaign name if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaBootstrap.html#LuaBootstrap.level)
---@field campaign_name? string 
---The level name.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaBootstrap.html#LuaBootstrap.level)
---@field level_name string 
---The mod name if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaBootstrap.html#LuaBootstrap.level)
---@field mod_name? string 

---[View documentation](https://lua-api.factorio.com/latest/LuaBurnerPrototype.html#LuaBurnerPrototype.light_flicker)
---@class LuaBurnerPrototype.light_flicker
---[View documentation](https://lua-api.factorio.com/latest/LuaBurnerPrototype.html#LuaBurnerPrototype.light_flicker)
---@field minimum_intensity float 
---[View documentation](https://lua-api.factorio.com/latest/LuaBurnerPrototype.html#LuaBurnerPrototype.light_flicker)
---@field maximum_intensity float 
---[View documentation](https://lua-api.factorio.com/latest/LuaBurnerPrototype.html#LuaBurnerPrototype.light_flicker)
---@field derivation_change_frequency float 
---[View documentation](https://lua-api.factorio.com/latest/LuaBurnerPrototype.html#LuaBurnerPrototype.light_flicker)
---@field derivation_change_deviation float 
---[View documentation](https://lua-api.factorio.com/latest/LuaBurnerPrototype.html#LuaBurnerPrototype.light_flicker)
---@field border_fix_speed float 
---[View documentation](https://lua-api.factorio.com/latest/LuaBurnerPrototype.html#LuaBurnerPrototype.light_flicker)
---@field minimum_light_size float 
---[View documentation](https://lua-api.factorio.com/latest/LuaBurnerPrototype.html#LuaBurnerPrototype.light_flicker)
---@field light_intensity_to_size_coefficient float 
---[View documentation](https://lua-api.factorio.com/latest/LuaBurnerPrototype.html#LuaBurnerPrototype.light_flicker)
---@field color Color 

---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.mining_state)
---@class LuaControl.mining_state
---Whether the player is mining at all
---
---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.mining_state)
---@field mining boolean 
---What tiles the player is mining; only used when the player is mining tiles (holding a tile in the cursor).
---
---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.mining_state)
---@field position? MapPosition 

---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.repair_state)
---@class LuaControl.repair_state
---The current state
---
---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.repair_state)
---@field repairing boolean 
---The position being repaired
---
---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.repair_state)
---@field position MapPosition 

---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.shooting_state)
---@class LuaControl.shooting_state
---The current state
---
---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.shooting_state)
---@field state defines.shooting 
---The position being shot at
---
---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.shooting_state)
---@field position MapPosition 

---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.walking_state)
---@class LuaControl.walking_state
---If `false`, the player is currently not walking; otherwise it's going somewhere
---
---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.walking_state)
---@field walking boolean 
---Direction where the player is walking
---
---[View documentation](https://lua-api.factorio.com/latest/LuaControl.html#LuaControl.walking_state)
---@field direction defines.direction 

---[View documentation](https://lua-api.factorio.com/latest/LuaEntity.html#LuaEntity.circuit_connected_entities)
---@class LuaEntity.circuit_connected_entities
---Entities connected via the red wire.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEntity.html#LuaEntity.circuit_connected_entities)
---@field red LuaEntity[] 
---Entities connected via the green wire.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEntity.html#LuaEntity.circuit_connected_entities)
---@field green LuaEntity[] 

---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@class LuaEntityPrototype.created_smoke
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field smoke_name string 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field offsets Vector[] 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field offset_deviation BoundingBox 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field initial_height float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field max_radius? float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field speed Vector 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field speed_multiplier float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field speed_multiplier_deviation float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field starting_frame float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field starting_frame_deviation float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field starting_frame_speed float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field starting_frame_speed_deviation float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field speed_from_center float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.created_smoke)
---@field speed_from_center_deviation float 

---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@class LuaEntityPrototype.logistic_parameters
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field spawn_and_station_height float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field spawn_and_station_shadow_height_offset float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field charge_approach_distance float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field logistic_radius float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field construction_radius float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field charging_station_count uint 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field charging_distance float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field charging_station_shift Vector 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field charging_energy double 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field charging_threshold_distance float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field robot_vertical_acceleration float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field stationing_offset Vector 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field robot_limit uint 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field logistics_connection_distance float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.logistic_parameters)
---@field robots_shrink_when_entering_and_exiting boolean 

---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.mineable_properties)
---@class LuaEntityPrototype.mineable_properties
---Is this entity mineable at all?
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.mineable_properties)
---@field minable boolean 
---Energy required to mine an entity.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.mineable_properties)
---@field mining_time double 
---Prototype name of the particle produced when mining this entity. Will only be present if this entity produces any particle during mining.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.mineable_properties)
---@field mining_particle? string 
---Products obtained by mining this entity.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.mineable_properties)
---@field products? Product[] 
---The required fluid amount if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.mineable_properties)
---@field fluid_amount? double 
---The prototype name of the required fluid if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.mineable_properties)
---@field required_fluid? string 
---The mining trigger if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.mineable_properties)
---@field mining_trigger? TriggerItem[] 

---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.spawn_cooldown)
---@class LuaEntityPrototype.spawn_cooldown
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.spawn_cooldown)
---@field min double 
---[View documentation](https://lua-api.factorio.com/latest/LuaEntityPrototype.html#LuaEntityPrototype.spawn_cooldown)
---@field max double 

---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.shape)
---@class LuaEquipment.shape
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.shape)
---@field width uint 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipment.html#LuaEquipment.shape)
---@field height uint 

---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@class LuaEquipmentPrototype.logistic_parameters
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field spawn_and_station_height float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field spawn_and_station_shadow_height_offset float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field charge_approach_distance float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field logistic_radius float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field construction_radius float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field charging_station_count uint 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field charging_distance float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field charging_station_shift Vector 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field charging_energy double 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field charging_threshold_distance float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field robot_vertical_acceleration float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field stationing_offset Vector 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field robot_limit uint 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field logistics_connection_distance float 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.logistic_parameters)
---@field robots_shrink_when_entering_and_exiting boolean 

---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.shape)
---@class LuaEquipmentPrototype.shape
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.shape)
---@field width uint 
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.shape)
---@field height uint 
---Only set when the shape is "manual"
---
---[View documentation](https://lua-api.factorio.com/latest/LuaEquipmentPrototype.html#LuaEquipmentPrototype.shape)
---@field points? EquipmentPoint[] 

---[View documentation](https://lua-api.factorio.com/latest/LuaTilePrototype.html#LuaTilePrototype.mineable_properties)
---@class LuaTilePrototype.mineable_properties
---Is this tile mineable at all?
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTilePrototype.html#LuaTilePrototype.mineable_properties)
---@field minable boolean 
---Energy required to mine a tile.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTilePrototype.html#LuaTilePrototype.mineable_properties)
---@field mining_time double 
---Prototype name of the particle produced when mining this tile. Will only be present if this tile produces any particle during mining.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTilePrototype.html#LuaTilePrototype.mineable_properties)
---@field mining_particle? string 
---Products obtained by mining this tile.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaTilePrototype.html#LuaTilePrototype.mineable_properties)
---@field products Product[] 

---[View documentation](https://lua-api.factorio.com/latest/Concepts.html#BlueprintEntity)
---@class BlueprintEntity.inventory
---[View documentation](https://lua-api.factorio.com/latest/Concepts.html#BlueprintEntity)
---@field bar? number 
---[View documentation](https://lua-api.factorio.com/latest/Concepts.html#BlueprintEntity)
---@field filters? InventoryFilter[] 


