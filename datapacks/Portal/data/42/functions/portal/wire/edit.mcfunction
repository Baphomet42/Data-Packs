tag @e remove 42.portal_new_spawn
execute if score @s 42.portal_z matches 0 align xyz positioned ~.5 ~.5 ~.5 run summon glow_item_frame ~ ~ ~ {Fixed:1,Item:{id:redstone_block,Count:1,tag:{display:{Name:'{"text":"Unlinked Wire"}'}}},ItemDropChance:0f,Tags:["42.portal_new_spawn","42.portal_wire_unlinked"],Facing:3b}
execute if score @s 42.portal_z matches 1 align xyz positioned ~.5 ~.5 ~.5 run summon glow_item_frame ~ ~ ~ {Fixed:1,Item:{id:redstone_block,Count:1,tag:{display:{Name:'{"text":"Unlinked Wire"}'}}},ItemDropChance:0f,Tags:["42.portal_new_spawn","42.portal_wire_unlinked"],Facing:4b}
execute if score @s 42.portal_z matches 2 align xyz positioned ~.5 ~.5 ~.5 run summon glow_item_frame ~ ~ ~ {Fixed:1,Item:{id:redstone_block,Count:1,tag:{display:{Name:'{"text":"Unlinked Wire"}'}}},ItemDropChance:0f,Tags:["42.portal_new_spawn","42.portal_wire_unlinked"],Facing:5b}
execute if score @s 42.portal_z matches 3 align xyz positioned ~.5 ~.5 ~.5 run summon glow_item_frame ~ ~ ~ {Fixed:1,Item:{id:redstone_block,Count:1,tag:{display:{Name:'{"text":"Unlinked Wire"}'}}},ItemDropChance:0f,Tags:["42.portal_new_spawn","42.portal_wire_unlinked"],Facing:2b}
execute if score @s 42.portal_z matches 4 align xyz positioned ~.5 ~.5 ~.5 run summon glow_item_frame ~ ~ ~ {Fixed:1,Item:{id:redstone_block,Count:1,tag:{display:{Name:'{"text":"Unlinked Wire"}'}}},ItemDropChance:0f,Tags:["42.portal_new_spawn","42.portal_wire_unlinked"],Facing:1b}
execute if score @s 42.portal_z matches 5 align xyz positioned ~.5 ~.5 ~.5 run summon glow_item_frame ~ ~ ~ {Fixed:1,Item:{id:redstone_block,Count:1,tag:{display:{Name:'{"text":"Unlinked Wire"}'}}},ItemDropChance:0f,Tags:["42.portal_new_spawn","42.portal_wire_unlinked"],Facing:0b}
#
scoreboard players set @e[tag=42.portal_new_spawn] 42.portal_link -1
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
#
tag @e remove 42.portal_new_spawn
kill @s[tag=42.portal_wire]