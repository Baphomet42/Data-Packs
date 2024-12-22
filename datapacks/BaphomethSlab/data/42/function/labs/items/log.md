
------------------------------------------------------------------------------------

# BaphomethLabs Black Market items log

This file is to log important information related to maintaining custom items.

------------------------------------------------------------------------------------

# general

+ All items should exist in `42:labs/items` functions as the "main source"
+ Items that contain repeat data should be created in composite functions (containers, armor stands, attribute modifiers)
    + The base function contains the data unique to the container item and holds a placeholder slot for each 42item it contains
    + The placeholder should be a unique searchable term for easy search and replace, and the base item should include this term in a comment above the command
    + All placeholders should be documented either in the placeholders section or attribute modifiers section
+ Any item that contains another of these items (shulker boxes, armor stands, etc) must be created in a composite function
+ Items should follow general dominion conventions (or document exceptions below)
+ After modifying items, update them in the following places:
    + Vespertine Black Market
    + 42edit saved_items
    + Saved hotbars
    + Worlds (42city)

------------------------------------------------------------------------------------

# composite item placeholders

+ TODO

------------------------------------------------------------------------------------

# attribute modifiers

Any item that uses `attribute_modifiers` should follow these rules. Exceptions to the rules must be documented below.

+ Modifiers should usually avoid slot conflicts
    + The `slot` field must always be defined, and it should be set to a single slot, not a slot group
    + The `id` must contain the slot in the name
+ Modifier `id`'s will follow the naming convention `42:labs/item/<name>/<slot>`
    + The name may include subfolders for organization purposes
+ A modifier name will refer to one or more modifiers, and the entire group must always be used consistently in all places
    + Each item can have multiple different modifier groups
    + The slot used for the group can change to fit the item, and multiple slots can be applied to the same item

Documented modifiers:

+ `42:labs/item/stamin_up/<slot>`
    + Template - `{amount:2.0d,id:"42:labs/item/stamin_up/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:movement_speed"}`

+ `42:labs/item/thor/<slot>`
    + Template - `{amount:935.0d,id:"42:labs/item/thor/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:attack_damage"},{amount:935.0d,id:"42:labs/item/thor/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:attack_speed"},{amount:935.0d,id:"42:labs/item/thor/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:knockback_resistance"},{amount:935.0d,id:"42:labs/item/thor/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:armor_toughness"},{amount:935.0d,id:"42:labs/item/thor/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:luck"},{amount:-1.0d,id:"42:labs/item/thor/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:fall_damage_multiplier"}`

+ `42:labs/item/effective_power/<slot>`
    + Template - `{amount:1.0d,id:"42:labs/item/effective_power/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:movement_speed"},{amount:100.0d,id:"42:labs/item/effective_power/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:max_health"},{amount:100.0d,id:"42:labs/item/effective_power/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:follow_range"},{amount:100.0d,id:"42:labs/item/effective_power/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:attack_damage"},{amount:100.0d,id:"42:labs/item/effective_power/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:spawn_reinforcements"}`

+ `42:labs/item/vril_sphere/<slot>`
    + Template - `{amount:-0.25d,id:"42:labs/item/vril_sphere/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:jump_strength"},{amount:-0.75d,id:"42:labs/item/vril_sphere/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:gravity"},{amount:-0.333d,id:"42:labs/item/vril_sphere/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:movement_speed"}`

+ `42:labs/item/zero_gravity/<slot>`
    + Template - `{amount:-1.0d,id:"42:labs/item/zero_gravity/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:gravity"}`

+ `42:labs/item/luftballon/<slot>`
    + Template - `{amount:-2.0d,id:"42:labs/item/luftballon/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:gravity"}`

+ `42:labs/item/tablet/antman/<slot>`
    + Template - `{amount:-1.0d,id:"42:labs/item/tablet/antman/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:scale"}`

+ `42:labs/item/tablet/hobbit/<slot>`
    + Template - `{amount:-0.5d,id:"42:labs/item/tablet/hobbit/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:scale"}`

+ `42:labs/item/tablet/bossmode/<slot>`
    + Template - `{amount:1.0d,id:"42:labs/item/tablet/bossmode/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:gravity"},{amount:1.0d,id:"42:labs/item/tablet/bossmode/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:jump_strength"},{amount:1.0d,id:"42:labs/item/tablet/bossmode/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:movement_speed"},{amount:1.0d,id:"42:labs/item/tablet/bossmode/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:scale"},{amount:1.0d,id:"42:labs/item/tablet/bossmode/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:step_height"},{amount:1.0d,id:"42:labs/item/tablet/bossmode/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:block_interaction_range"},{amount:1.0d,id:"42:labs/item/tablet/bossmode/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:entity_interaction_range"},{amount:-1.0d,id:"42:labs/item/tablet/bossmode/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:fall_damage_multiplier"}`

+ `42:labs/item/tablet/giganto/<slot>`
    + Template - `{amount:5.0d,id:"42:labs/item/tablet/giganto/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:gravity"},{amount:5.0d,id:"42:labs/item/tablet/giganto/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:jump_strength"},{amount:5.0d,id:"42:labs/item/tablet/giganto/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:movement_speed"},{amount:5.0d,id:"42:labs/item/tablet/giganto/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:scale"},{amount:5.0d,id:"42:labs/item/tablet/giganto/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:step_height"},{amount:5.0d,id:"42:labs/item/tablet/giganto/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:block_interaction_range"},{amount:5.0d,id:"42:labs/item/tablet/giganto/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:entity_interaction_range"},{amount:-1.0d,id:"42:labs/item/tablet/giganto/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:fall_damage_multiplier"}`

+ `42:labs/item/tablet/xltt/<slot>`
    + Template - `{amount:8.0d,id:"42:labs/item/tablet/xltt/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:gravity"},{amount:12.5d,id:"42:labs/item/tablet/xltt/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:jump_strength"},{amount:15.0d,id:"42:labs/item/tablet/xltt/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:movement_speed"},{amount:15.0d,id:"42:labs/item/tablet/xltt/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:scale"},{amount:15.0d,id:"42:labs/item/tablet/xltt/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:step_height"},{amount:15.0d,id:"42:labs/item/tablet/xltt/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:block_interaction_range"},{amount:15.0d,id:"42:labs/item/tablet/xltt/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:entity_interaction_range"},{amount:-1.0d,id:"42:labs/item/tablet/xltt/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:fall_damage_multiplier"}`

+ `42:labs/item/archive/budder/<slot>`
    + Template - `{amount:0.1d,id:"42:labs/item/archive/budder/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:movement_speed"}`

Undocumented modifiers
+ This list contains certain known modifier IDs for convenience (but not all)
    + `minecraft:base_attack_damage` (used by vanilla and in custom items to recreate vanilla attribute tooltip)
    + `minecraft:base_attack_speed` (used by vanilla and in custom items to recreate vanilla attribute tooltip)
    + `42:labs/item/archive/sticky_piston/any` (lux archive sticky piston)
    + `42:labs/item/archive/the_sun/any` (lux archive the sun)

------------------------------------------------------------------------------------

# Rule exceptions

+ Modifiers with slot conflicts
    + `42:labs/item/archive/sticky_piston/any`
    + `42:labs/item/archive/the_sun/any`
+ Items not made with composite system
    + Hardcoded attribute modifiers
        + The Sun
        + Sticky Piston
        + Budder

------------------------------------------------------------------------------------
