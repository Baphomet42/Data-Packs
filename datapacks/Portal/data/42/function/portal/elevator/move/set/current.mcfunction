function 42:portal/elevator/reset
function 42:portal/tag_id
execute unless score @s 42.obj.portal.var.x matches 0 run function 42:portal/elevator/move/clear_end
tag @s add 42.tag.portal.elevator.search

tag @e remove 42.tag.portal.new_spawn
execute at @p[tag=42.tag.portal.selected] align y run summon marker ~ ~ ~ {Tags:["42.tag.portal.elevator.marker","42.tag.portal.tags.has_tick","42.tag.portal.elevator.group","42.tag.portal.elevator.valid","42.tag.portal.new_spawn"]}
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
scoreboard players operation @s 42.obj.portal.temp = @s 42.obj.portal.var.y
execute store result score @s 42.obj.portal.xrot1 run data get entity @e[tag=42.tag.portal.new_spawn,limit=1] Pos[1] 100
scoreboard players operation @s 42.obj.portal.xrot1 -= @s 42.obj.portal.temp

scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.x = @s 42.obj.portal.xrot1
scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @s 42.obj.portal.id
execute as @e[tag=42.tag.portal.new_spawn] run scoreboard players set @s 42.obj.portal.temp 100
execute as @e[tag=42.tag.portal.new_spawn] run scoreboard players operation @s 42.obj.portal.yrot1 = @s 42.obj.portal.var.x
execute as @e[tag=42.tag.portal.new_spawn] run scoreboard players operation @s 42.obj.portal.yrot1 /= @s 42.obj.portal.temp

execute if score @s 42.obj.portal.xrot1 matches -400..400 at @s run function 42:portal/elevator/move/set_none
execute if score @s 42.obj.portal.xrot1 matches 500.. as @e[tag=42.tag.portal.new_spawn] at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.start] run tp @s ~ ~4 ~ ~ ~
execute if score @s 42.obj.portal.xrot1 matches 500.. run scoreboard players remove @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.x 400
execute if score @s 42.obj.portal.xrot1 matches ..-500 as @e[tag=42.tag.portal.new_spawn] at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.start] run tp @s ~ ~-1 ~ ~ ~
execute if score @s 42.obj.portal.xrot1 matches ..-500 run scoreboard players add @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.x 100
execute if score @s 42.obj.portal.xrot1 matches -400..400 run tag @s remove 42.tag.portal.elevator.search
execute if score @s 42.obj.portal.xrot1 matches -400..400 run kill @e[tag=42.tag.portal.new_spawn]

tag @e remove 42.tag.portal.new_spawn