execute if score @s 42.portal_cool matches 1.. run scoreboard players remove @s 42.portal_cool 1
function 42:portal/tag_id
execute if score @s 42.portal_time matches 20 run function 42:portal/portal/tick20
execute if entity @e[tag=42.portal_blue,tag=42.portal_id] if entity @e[tag=42.portal_orange,tag=42.portal_id] if score @s 42.portal_cool matches 0 run function 42:portal/portal/tick_try_tp
tag @e remove 42.portal_id
#
execute if entity @a[distance=..16] if entity @s[tag=42.portal_blue] run particle dust 0 0 1 .5 ^ ^.5 ^.25 .4 .6 .4 0 2
execute if entity @a[distance=..16] if entity @s[tag=42.portal_orange] run particle dust 1 .5 0 .5 ^ ^.5 ^.25 .4 .6 .4 0 2
#
scoreboard players add @s 42.portal_time 1
execute if score @s 42.portal_time matches 21 run scoreboard players set @s 42.portal_time 0