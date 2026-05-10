execute as @a unless score @s 42.obj.portal.id matches -2147483648..2147483647 run scoreboard players set @s 42.obj.portal.id 0
scoreboard players set @s 42.obj.portal.temp 0
tag @s add 42.tag.portal.temp.start_hold
execute if entity @s[tag=42.tag.portal.cube.held] if entity @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.cube.size_1,tag=42.tag.portal.id] positioned ~-.5 ~ ~-.5 unless entity @e[tag=42.tag.portal.cube.main,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/hold_test
execute if entity @s[tag=42.tag.portal.cube.held] if entity @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.cube.size_2,tag=42.tag.portal.id] positioned ~-.5 ~ ~-.5 unless entity @e[tag=42.tag.portal.cube.main,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute if score @s 42.obj.portal.temp matches 1 on target if score @s 42.obj.portal.id = @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,limit=1] 42.obj.portal.id run tag @e[tag=42.tag.portal.temp.start_hold] remove 42.tag.portal.temp.start_hold

execute if entity @s[tag=42.tag.portal.cube.held,tag=!42.tag.portal.temp.start_hold] as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.main,limit=1] run function 42:portal/cube/hold_stop
execute if entity @s[tag=!42.tag.portal.cube.held,tag=42.tag.portal.temp.start_hold] as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.main,limit=1] run function 42:portal/cube/hold_start
tag @s remove 42.tag.portal.temp.start_hold

execute if entity @s[tag=42.tag.portal.cube.held] on target if score @s 42.obj.portal.id matches 0 run scoreboard players set @a[tag=42.tag.portal.id] 42.obj.portal.id 0
execute if entity @s[tag=42.tag.portal.cube.held] on target if score @s 42.obj.portal.id matches 0 run scoreboard players operation @s 42.obj.portal.id = @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,limit=1] 42.obj.portal.id
function 42:portal/tag_id
data remove entity @s interaction