function 42:portal/elevator/reset
function 42:portal/tag_id
execute unless score @s 42.portal_x matches 0 run function 42:portal/elevator/move/clear_end
tag @s add 42.portal_elevator_search

tag @e remove 42.portal_new_spawn
execute at @p[tag=42.portal_selected] align y run summon marker ~ ~ ~ {Tags:["42.portal_elevator_marker","42.portal_elevator_group","42.portal_elevator_valid","42.portal_new_spawn"]}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
scoreboard players operation @s 42.portal_temp = @s 42.portal_y
execute store result score @s 42.portal_xrot1 run data get entity @e[tag=42.portal_new_spawn,limit=1] Pos[1] 100
scoreboard players operation @s 42.portal_xrot1 -= @s 42.portal_temp

scoreboard players operation @e[tag=42.portal_new_spawn] 42.portal_x = @s 42.portal_xrot1
scoreboard players operation @e[tag=42.portal_new_spawn] 42.portal_id = @s 42.portal_id
execute as @e[tag=42.portal_new_spawn] run scoreboard players set @s 42.portal_temp 100
execute as @e[tag=42.portal_new_spawn] run scoreboard players operation @s 42.portal_yrot1 = @s 42.portal_x
execute as @e[tag=42.portal_new_spawn] run scoreboard players operation @s 42.portal_yrot1 /= @s 42.portal_temp

execute if score @s 42.portal_xrot1 matches -400..400 at @s run function 42:portal/elevator/move/set_none
execute if score @s 42.portal_xrot1 matches 500.. as @e[tag=42.portal_new_spawn] at @e[tag=42.portal_id,tag=42.portal_elevator_start] run tp @s ~ ~4 ~ ~ ~
execute if score @s 42.portal_xrot1 matches 500.. run scoreboard players remove @e[tag=42.portal_new_spawn] 42.portal_x 400
execute if score @s 42.portal_xrot1 matches ..-500 as @e[tag=42.portal_new_spawn] at @e[tag=42.portal_id,tag=42.portal_elevator_start] run tp @s ~ ~-1 ~ ~ ~
execute if score @s 42.portal_xrot1 matches ..-500 run scoreboard players add @e[tag=42.portal_new_spawn] 42.portal_x 100
execute if score @s 42.portal_xrot1 matches -400..400 run kill @e[tag=42.portal_new_spawn]

tag @e remove 42.portal_new_spawn