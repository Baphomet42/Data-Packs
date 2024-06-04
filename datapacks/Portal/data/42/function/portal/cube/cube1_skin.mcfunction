scoreboard players add @s 42.portal_skin 1
execute if score @s 42.portal_skin matches 2.. run scoreboard players set @s 42.portal_skin 0
#
execute as @e[tag=42.portal_id,tag=42.portal_cube_dis] run data modify entity @s view_range set value 0f
execute if score @s 42.portal_skin matches 0 as @e[tag=42.portal_id,tag=42.portal_cube_dis,tag=!42.portal_cube_dis_old] run data modify entity @s view_range set value 10f
execute if score @s 42.portal_skin matches 1 as @e[tag=42.portal_id,tag=42.portal_cube_dis,tag=42.portal_cube_dis_old] run data modify entity @s view_range set value 10f