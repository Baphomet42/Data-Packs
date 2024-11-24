scoreboard players add @s 42.obj.portal.skin 1
execute if score @s 42.obj.portal.skin matches 2.. run scoreboard players set @s 42.obj.portal.skin 0

execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] run data modify entity @s view_range set value 0f
execute if score @s 42.obj.portal.skin matches 0 as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis,tag=!42.tag.portal.cube.dis.old] run data modify entity @s view_range set value 10f
execute if score @s 42.obj.portal.skin matches 1 as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis,tag=42.tag.portal.cube.dis.old] run data modify entity @s view_range set value 10f