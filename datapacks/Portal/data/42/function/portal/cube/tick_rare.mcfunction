function 42:portal/tag_id

execute as @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,tag=42.tag.portal.cube.held] unless entity @a[tag=42.tag.portal.id] run tag @s remove 42.tag.portal.cube.held
execute as @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,tag=!42.tag.portal.cube.held] run data modify entity @s response set value true

scoreboard players set @s 42.obj.portal.temp 0
execute if entity @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,tag=42.tag.portal.cube.held] as @a[tag=42.tag.portal.id] run scoreboard players add @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.id] 42.obj.portal.temp 1
execute if score @s 42.obj.portal.temp matches 2.. run scoreboard players set @a[tag=42.tag.portal.id] 42.obj.portal.id 0