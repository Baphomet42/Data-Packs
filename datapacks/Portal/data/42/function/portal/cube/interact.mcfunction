execute as @a unless score @s 42.obj.portal.id matches -2147483648..2147483647 run scoreboard players set @s 42.obj.portal.id 0
tag @e remove 42.tag.portal.temp
scoreboard players set @s 42.obj.portal.temp 0
execute if entity @s[tag=42.tag.portal.cube.held] if entity @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.cube.size_1,tag=42.tag.portal.id] positioned ~-.5 ~ ~-.5 unless entity @e[tag=42.tag.portal.cube.tp,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/hold_test
execute if entity @s[tag=42.tag.portal.cube.held] if entity @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.cube.size_2,tag=42.tag.portal.id] positioned ~-.5 ~ ~-.5 unless entity @e[tag=42.tag.portal.cube.tp,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute if entity @s[tag=42.tag.portal.cube.held] if score @s 42.obj.portal.temp matches 1 run tag @s add 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.temp] on target unless score @s 42.obj.portal.id = @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,limit=1] 42.obj.portal.id run tag @e[tag=42.tag.portal.temp] remove 42.tag.portal.temp
tag @s add 42.tag.portal.cube.held
tag @s[tag=42.tag.portal.temp] remove 42.tag.portal.cube.held
tag @e remove 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.cube.held] on target if score @s 42.obj.portal.id matches 0 run scoreboard players set @a[tag=42.tag.portal.id] 42.obj.portal.id 0
execute if entity @s[tag=42.tag.portal.cube.held] on target if score @s 42.obj.portal.id matches 0 run scoreboard players operation @s 42.obj.portal.id = @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,limit=1] 42.obj.portal.id
execute if entity @s[tag=42.tag.portal.cube.held] run function 42:portal/generic/motion/end
execute if entity @s[tag=!42.tag.portal.cube.held] on target if score @s 42.obj.portal.id = @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,limit=1] 42.obj.portal.id run scoreboard players set @s 42.obj.portal.id 0
function 42:portal/tag_id
data remove entity @s interaction