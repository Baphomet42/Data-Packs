tag @s remove 42.portal_temp_grill
execute positioned ^-1 ^-1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_grill
execute positioned ^-1 ^ ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_grill
execute positioned ^-1 ^1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_grill
execute positioned ^ ^-1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_grill
execute positioned ^ ^ ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_grill
execute positioned ^ ^1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_grill
execute positioned ^1 ^-1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_grill
execute positioned ^1 ^ ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_grill
execute positioned ^1 ^1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_grill
scoreboard players set @s 42.portal_col 0
execute if entity @s[tag=42.portal_temp_grill] run scoreboard players remove @s 42.portal_col 1
tag @s remove 42.portal_temp_grill

execute positioned ^-1 ^-1 ^ align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_block
execute positioned ^-1 ^ ^ align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_block
execute positioned ^-1 ^1 ^ align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_block
execute positioned ^ ^-1 ^ align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_block
execute positioned ^ ^ ^ align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_block
execute positioned ^ ^1 ^ align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_block
execute positioned ^1 ^-1 ^ align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_block
execute positioned ^1 ^ ^ align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_block
execute positioned ^1 ^1 ^ align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_block

execute positioned ^-1 ^-1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_front
execute positioned ^-1 ^ ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_front
execute positioned ^-1 ^1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_front
execute positioned ^ ^-1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_front
execute positioned ^ ^ ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_front
execute positioned ^ ^1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_front
execute positioned ^1 ^-1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_front
execute positioned ^1 ^ ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_front
execute positioned ^1 ^1 ^.9 align xyz positioned ~.5 ~.5 ~.5 run function 42:portal/gun/valid_front