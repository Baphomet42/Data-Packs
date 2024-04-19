------------------------------------------------------------------------------------

# 42dominion update guide

Ignore this file if you're just using the datapacks.
This is to log important information used for updating the datapacks.

------------------------------------------------------------------------------------

# 42.datapack ids

Used for 42menu system, custom model data, entity score, item watermark.

42menu values are 42NNXXX where NN is the id in 2 digits and XXX are the values 000 to 999.

Custom model data values are 42NNXXX as well. After the last custom model data entry for each pack,
the default texture should be returned.

All entities summoned by a pack should have the score 42.datapack equal to the id.

All items given by a pack should have custom_data.42datapack equal to the id.

+ xltt - 1
+ newworld - 2
+ portal - 3
+ essentials - 4
+ hvac - none

Minecraft namespace should be rarely used (and almost always non-replacing).
In most cases, use the namepace 42 and follow it with the pack namespace. (Ex: 42:portal).

------------------------------------------------------------------------------------

# Scoreboard and Tags Format

Scoreboard objectives and tags should start with 42.packname_ (Ex: 42.portal_id).

Exceptions to scoreboard objectives may be trigger commands, which should be a simple name.

------------------------------------------------------------------------------------

# Macro Functions

These are not validated upon /reload, so test these manually when updating.

## Portal

+ zone/size
+ zone/mode
+ wire/respawn
+ tools/resolve
+ portal/spawner/respawn
+ pellet/spawner/respawn
+ pellet/emitter/load
+ pellet/catcher/load
+ level/loader/storage/save_level
+ level/loader/storage/get_level
+ level/loader/storage/delete_level
+ level/loader/load/wire
+ level/loader/load/portal_spawner
+ level/loader/load/pellet_spawner
+ level/loader/load/pellet_emitter
+ level/loader/load/pellet_catcher
+ level/loader/load/pedestal
+ level/loader/load/launch
+ level/loader/load/grill
+ level/loader/load/dropper
+ level/loader/load/door
+ level/loader/load/cube_spawner
+ level/loader/load/btn
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