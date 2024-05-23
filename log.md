------------------------------------------------------------------------------------

# 42dominion update guide

Ignore this file if you're just using the datapacks.
This is to log important information used for updating the datapacks.

------------------------------------------------------------------------------------

# 42.datapack ids

Each pack that needs an id will get one. The id can be 1 to 99.

Used for 42menu system, custom model data, entity score, item watermark.

42menu values are 42NNXXX where NN is the id in 2 digits and XXX are the values 000 to 999.

Custom model data values are 42NNXXX as well. After the last custom model data entry for each pack,
the default texture should be returned.

All entities summoned by a pack should have the score 42.datapack equal to the id.

All items given by a pack should have custom_data.42datapack equal to the id.

+ xltt - 1
+ newworld - none
+ portal - 3
+ essentials - 4
+ dbd - 5
+ hvac - none

Minecraft namespace should be rarely used (and almost always non-replacing).
In most cases, use the namepace 42 and follow it with the pack namespace. (Ex: 42:portal).

------------------------------------------------------------------------------------

# Scoreboard and Tags Format

Scoreboard objectives and tags should start with 42.packname_ (Ex: 42.portal_id).

Exceptions to scoreboard objectives may be trigger commands, which should be a simple name.

------------------------------------------------------------------------------------

# Shared Files

The following files appear in multiple datapacks and should be kept equal

+ data/42/advancements/
    + root.json
    + menu.json
    + op.json
+ data/42/functions/
    + 42menu.mcfunction
    + error_perms.mcfunction
+ data/42/tags/
    + blocks/projectile_pass.json
    + *functions/menu.json*
+ *data/minecraft/tags/functions/load.json*

*Italicized files differ between packs, and should set replace to false*

------------------------------------------------------------------------------------

# New datapack or resourcepack version

Update all datapacks/resourcepacks pack.mcmeta to new version.

Add new blocks to projectile_pass block tag.

Validate pack advancements/tags/etc manually.
Validate functions using game output log.
Validate macros manually.

## Macro Functions

These are not validated upon /reload, so test these manually when updating.

**Portal**

+ zone/size
+ zone/mode
+ wire/respawn
+ tools/resolve
+ portal/spawner/respawn
+ pellet/spawner/respawn
+ pellet/emitter/load
+ pellet/catcher/load
+ level/loader/storage/*
+ level/loader/load/*
+ launch/set_velocity
+ launch/set_velocity_z
+ launch/set_velocity_y
+ launch/set_velocity_z
+ launch/load
+ gun/craft_custom
+ grill/load2
+ grill/load1
+ generic/test_range
+ generic/find_all
+ generic/test_range/y
+ generic/find_all/y
+ elevator/tp/tp
+ elevator/move/move_x
+ dropper/load
+ door/load
+ cube/spawner/respawn
+ button/set_time
+ button/load
+ button/load_pedestal

------------------------------------------------------------------------------------