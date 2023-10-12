execute positioned ^ ^ ^.9 align xyz positioned ~.5 ~.5 ~.5 if entity @e[tag=42.portal_pellet_catcher,tag=!42.portal_pellet_catcher_on,distance=...1] run function 42:portal/pellet/pellet/activate
#
scoreboard players set @s 42.portal_z 0
execute if entity @s[tag=!42.portal_pellet_on] if entity @s[x_rotation=0] run tp @s ~ ~ ~ ~180 ~
execute if entity @s[tag=!42.portal_pellet_on] if entity @s[x_rotation=-90] run scoreboard players set @s 42.portal_z 1
execute if entity @s[tag=!42.portal_pellet_on] if entity @s[x_rotation=90] run scoreboard players set @s 42.portal_z 2
execute if entity @s[tag=!42.portal_pellet_on] if score @s 42.portal_z matches 1 run tp @s ~ ~ ~ ~ 90
execute if entity @s[tag=!42.portal_pellet_on] if score @s 42.portal_z matches 2 run tp @s ~ ~ ~ ~ -90
#
execute if entity @s[tag=!42.portal_pellet_on] run playsound minecraft:entity.iron_golem.repair neutral @a ~ ~ ~ 2 1.25