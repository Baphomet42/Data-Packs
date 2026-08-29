#match blocks: #42:portal/portal_surface, portal/replace_wall, portal/read_block
scoreboard players set @s 42.obj.portal.skin 0

execute if block ~ ~ ~ quartz_block run scoreboard players set @s 42.obj.portal.skin 0
execute if block ~ ~ ~ smooth_quartz run scoreboard players set @s 42.obj.portal.skin 1
execute if block ~ ~ ~ chiseled_quartz_block run scoreboard players set @s 42.obj.portal.skin 2
execute if block ~ ~ ~ smooth_stone run scoreboard players set @s 42.obj.portal.skin 3
execute if block ~ ~ ~ white_concrete run scoreboard players set @s 42.obj.portal.skin 4
execute if block ~ ~ ~ calcite run scoreboard players set @s 42.obj.portal.skin 5
execute if block ~ ~ ~ white_wool run scoreboard players set @s 42.obj.portal.skin 6
execute if block ~ ~ ~ polished_diorite run scoreboard players set @s 42.obj.portal.skin 7
execute if block ~ ~ ~ polished_andesite run scoreboard players set @s 42.obj.portal.skin 8
execute if block ~ ~ ~ bone_block[axis=x] run scoreboard players set @s 42.obj.portal.skin 9
execute if block ~ ~ ~ bone_block[axis=y] run scoreboard players set @s 42.obj.portal.skin 10
execute if block ~ ~ ~ bone_block[axis=z] run scoreboard players set @s 42.obj.portal.skin 11

data modify entity @s block_state set value "minecraft:quartz_block"
execute if score @s 42.obj.portal.skin matches 0 run data modify entity @s block_state set value "minecraft:quartz_block"
execute if score @s 42.obj.portal.skin matches 1 run data modify entity @s block_state set value "minecraft:smooth_quartz"
execute if score @s 42.obj.portal.skin matches 2 run data modify entity @s block_state set value "minecraft:chiseled_quartz_block"
execute if score @s 42.obj.portal.skin matches 3 run data modify entity @s block_state set value "minecraft:smooth_stone"
execute if score @s 42.obj.portal.skin matches 4 run data modify entity @s block_state set value "minecraft:white_concrete"
execute if score @s 42.obj.portal.skin matches 5 run data modify entity @s block_state set value "minecraft:calcite"
execute if score @s 42.obj.portal.skin matches 6 run data modify entity @s block_state set value "minecraft:white_wool"
execute if score @s 42.obj.portal.skin matches 7 run data modify entity @s block_state set value "minecraft:polished_diorite"
execute if score @s 42.obj.portal.skin matches 8 run data modify entity @s block_state set value "minecraft:polished_andesite"
execute if score @s 42.obj.portal.skin matches 9 run data modify entity @s block_state set value {id:"minecraft:bone_block",properties:{axis:"x"}}
execute if score @s 42.obj.portal.skin matches 10 run data modify entity @s block_state set value {id:"minecraft:bone_block",properties:{axis:"y"}}
execute if score @s 42.obj.portal.skin matches 11 run data modify entity @s block_state set value {id:"minecraft:bone_block",properties:{axis:"z"}}