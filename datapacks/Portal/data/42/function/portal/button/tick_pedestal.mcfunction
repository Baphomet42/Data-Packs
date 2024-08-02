function 42:portal/tag_id
execute if score @s 42.portal_time matches 10 run playsound minecraft:block.lever.click block @a ~ ~ ~ 1 .3
execute if score @s 42.portal_time matches 10 run data merge entity @e[tag=42.portal_id,tag=42.portal_pedestal_dis,limit=1] {transformation:{translation:[-.15f,1.05f,-.15f]},interpolation_duration:10,start_interpolation:-1}
execute if score @s 42.portal_time matches 10 run data merge entity @e[tag=42.portal_id,tag=42.portal_pedestal_hit,limit=1] {response:1b}
execute if score @s 42.portal_time matches 1 run function 42:portal/unpower
execute if score @s 42.portal_time matches 1.. run scoreboard players remove @s 42.portal_time 1
execute if score @s 42.portal_time matches 1.. run data remove entity @e[tag=42.portal_id,tag=42.portal_pedestal_hit,limit=1] interaction
execute if score @s 42.portal_time matches 0 as @e[tag=42.portal_pedestal_hit,tag=42.portal_id,limit=1,sort=nearest] at @s if entity @s[nbt={interaction:{}}] as @e[tag=42.portal_id,tag=42.portal_pedestal,limit=1] run function 42:portal/button/interact_pedestal
tag @e remove 42.portal_id