
----------------------------------------------------------------

# BaphomethLabs Black Market items log

This file is to log important information related to maintaining custom items.

----------------------------------------------------------------

# General

+ All items should exist in `42:labs/items` functions as the "main source"
+ Items that contain repeat data should be created in composite functions (containers, armor stands, attribute modifiers, etc.)
+ The function `42:labs/items/all` should create all simple and composite items and spawn them at `~ ~ ~`
+ Items should follow general dominion conventions (or document exceptions below)
+ After modifying items, update them in the following places:
    + Vespertine Black Market
    + 42edit saved_items
    + Saved hotbars
    + Worlds (42city)

----------------------------------------------------------------

# Composite items

+ Any item that is reused must be specified twice
    + The first command should create the item normally
    + The second command will store the item components data in storage for use in macro args
    + After editing any of the item commands, update the following data command so they are always kept equal
+ Any item that reuses data must be specified twice
    + The first command should be in a `composite/<name>/base` function and include a dummy placeholder string
        + Item components placeholder - `{"42:build_search_item":"<placeholder>"}`
        + Attribute modifier placeholder - `{id:"build_search_mod:<placeholder>",slot:"<slot>",type:"42:dummy",amount:0d,operation:"add_value"}`
        + The placeholder must contain only the charset `[a-z0-9_]*`
    + The second command will be built in a separate file and contain macro args
+ Build steps
    1. Copy each `base` file into the `build` file
    2. Search and replace:
        + search string (regex mode on) - `^summon`
        + replace string - `$summon`
        + files to include - `labs/items/composite/auto/**/build.mcfunction`
    3. Search and replace:
        + search string (regex mode on) - `\{"42:build_search_item":"([a-z0-9_]*)"\}`
        + replace string - `$($1)`
        + files to include - `labs/items/composite/auto/**/build.mcfunction`
    4. Search and replace:
        + see full list of search and replace (regex mode on) terms below (in the documented modifiers section)
        + files to include - `labs/items/composite/**/build.mcfunction`
    5. Verify there are no occurences of `build_search_` in any of the `labs/items/composite/**/build.mcfunction` files
+ Items should always be given from the build files, and never from the base files

----------------------------------------------------------------

# Attribute modifiers

Any item that uses `attribute_modifiers` should follow these rules. Exceptions to the rules must be documented below.

+ Modifiers should usually avoid slot conflicts
    + The `slot` field must always be defined, and it should be set to a single slot, not a slot group
    + The `id` must contain the slot in the name
    + For modifiers where slot conflicts are part of the design:
        + If the conflict is due to a slot group, simply use the slot group as `<slot>` and document below
        + If the conflict has slot limitations:
            + Replace `<slot>` in `id` with `multi`
            + Document below
+ Modifier `id`'s will follow the naming convention `42:labs/item/<name>/<slot>`
    + The name may include subfolders for organization purposes
+ A modifier name will refer to one or more modifiers, and the entire group must always be used consistently in all places
    + Each item can have multiple different modifier groups
    + The slot used for the group can change to fit the item, and multiple slots can be applied to the same item
+ Modifier groups used on multiple items should be documented here and use the composite item system such that they are all kept equal
    + A modifier group only used on a single item should remain stored in the item itself, but the `id` should be documented here for reference

Documented modifiers:

+ `42:labs/item/stamin_up/<slot>`
    + Template - `{amount:2.0d,id:"42:labs/item/stamin_up/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:movement_speed"}`
    + Build search/replace terms
        + `\{id:"build_search_mod:stamin_up/([a-z0-9_]*)",slot:"([a-z0-9_]*)",type:"42:dummy",amount:0d,operation:"add_value"\}`
            + `{amount:2.0d,id:"42:labs/item/stamin_up/$1",operation:"add_multiplied_total",slot:"$2",type:"minecraft:movement_speed"}`

+ `42:labs/item/thor/<slot>`
    + Template - `{amount:935.0d,id:"42:labs/item/thor/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:attack_damage"},{amount:935.0d,id:"42:labs/item/thor/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:attack_speed"},{amount:935.0d,id:"42:labs/item/thor/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:knockback_resistance"},{amount:935.0d,id:"42:labs/item/thor/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:armor_toughness"},{amount:935.0d,id:"42:labs/item/thor/<slot>",operation:"add_value",slot:"<slot>",type:"minecraft:luck"},{amount:-1.0d,id:"42:labs/item/thor/<slot>",operation:"add_multiplied_total",slot:"<slot>",type:"minecraft:fall_damage_multiplier"}`
    + Build search/replace terms
        + `\{id:"build_search_mod:thor/([a-z0-9_]*)",slot:"([a-z0-9_]*)",type:"42:dummy",amount:0d,operation:"add_value"\}`
            + `{amount:935.0d,id:"42:labs/item/thor/$1",operation:"add_value",slot:"$2",type:"minecraft:attack_damage"},{amount:935.0d,id:"42:labs/item/thor/$1",operation:"add_value",slot:"$2",type:"minecraft:attack_speed"},{amount:935.0d,id:"42:labs/item/thor/$1",operation:"add_value",slot:"$2",type:"minecraft:knockback_resistance"},{amount:935.0d,id:"42:labs/item/thor/$1",operation:"add_value",slot:"$2",type:"minecraft:armor_toughness"},{amount:935.0d,id:"42:labs/item/thor/$1",operation:"add_value",slot:"$2",type:"minecraft:luck"},{amount:-1.0d,id:"42:labs/item/thor/$1",operation:"add_multiplied_total",slot:"$2",type:"minecraft:fall_damage_multiplier"}`

+ Single use modifiers:
    + `42:labs/item/effective_power/<slot>`
    + `42:labs/item/vril_sphere/<slot>`
    + `42:labs/item/zero_gravity/<slot>`
    + `42:labs/item/luftballon/<slot>`
    + `42:labs/item/tablet/antman/<slot>`
    + `42:labs/item/tablet/hobbit/<slot>`
    + `42:labs/item/tablet/bossmode/<slot>`
    + `42:labs/item/tablet/giganto/<slot>`
    + `42:labs/item/tablet/xltt/<slot>`
    + `42:labs/item/archive/budder/<slot>`
    + `42:labs/item/archive/sticky_piston/<slot>`
    + `42:labs/item/archive/the_sun/<slot>`

+ Undocumented modifiers
    + This list contains certain known modifier IDs for convenience (but not all)
        + `minecraft:base_attack_damage`
        + `minecraft:base_attack_speed`
        + `minecraft:armor.boots`
        + `minecraft:armor.leggings`
        + `minecraft:armor.chestplate`
        + `minecraft:armor.helmet`
        + `minecraft:armor.body`

----------------------------------------------------------------

# Rule exceptions

+ Modifiers with slot conflicts
    + `42:labs/item/stamin_up/multi`
    + `42:labs/item/archive/sticky_piston/any`
    + `42:labs/item/archive/the_sun/any`

----------------------------------------------------------------
