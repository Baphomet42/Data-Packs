tag @e remove 42.tag.portal.new_spawn
summon block_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.elevator.group","42.tag.portal.elevator.main","42.tag.portal.tags.has_tick","42.tag.portal.selgroup","42.tag.portal.elevator.selgroup"],CustomNameVisible:false,CustomName:"Elevator",view_range:0f}
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.main,limit=1] run function 42:portal/new_id
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.main] 42.obj.portal.var.x 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.main] 42.obj.portal.var.y 0
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.main] store result score @s 42.obj.portal.var.y run data get entity @s Pos[1] 100
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.main] run scoreboard players operation @s 42.obj.portal.var.z = @s 42.obj.portal.var.y
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.main] 42.obj.portal.skin 0

execute as @p at @s run function 42:portal/get_rot
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.main] 42.obj.portal.yrot1 0
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.w] run scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.group] 42.obj.portal.yrot1 1
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.s] run scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.group] 42.obj.portal.yrot1 2
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.e] run scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.group] 42.obj.portal.yrot1 3
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.e] as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.group] at @s run rotate @s 90 ~
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.s] as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.group] at @s run rotate @s 180 ~
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.w] as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.group] at @s run rotate @s -90 ~
execute run function 42:portal/get_rot2

fill ~-2 ~ ~-2 ~2 ~2 ~2 barrier replace #42:portal/portal_replace
fill ~-1 ~3 ~-2 ~1 ~3 ~-2 smooth_quartz_stairs[facing=south,half=top] replace #42:portal/portal_replace
fill ~-1 ~3 ~2 ~1 ~3 ~2 smooth_quartz_stairs[facing=north,half=top] replace #42:portal/portal_replace
fill ~2 ~3 ~-1 ~2 ~3 ~1 smooth_quartz_stairs[facing=west,half=top] replace #42:portal/portal_replace
fill ~-2 ~3 ~-1 ~-2 ~3 ~1 smooth_quartz_stairs[facing=east,half=top] replace #42:portal/portal_replace
fill ~-1 ~ ~-1 ~1 ~ ~1 air replace barrier
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.main] at @s run fill ^-1 ^ ^-1 ^1 ^2 ^2 air replace barrier

execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.elevator.main] at @s run function 42:portal/elevator/show

tag @e remove 42.tag.portal.new_spawn
kill @s[type=area_effect_cloud]

#   ====scores====
#   42.obj.portal.var.x     end offset from start
#   42.obj.portal.var.y     start height * 100
#   42.obj.portal.var.z     end height * 100
#   42.obj.portal.skin      
#   42.obj.portal.xrot1     temp var used for move/move_x and move/set/
#   42.obj.portal.time      timer between movement/doors/etc
#   42.obj.portal.yrot1     yrot id (0s, 1w, 2n, 3e)
#   42.obj.portal.var.u     tp center x coord scaled 1000x
#   42.obj.portal.var.v     tp center y coord scaled 1000x
#   42.obj.portal.var.w     tp center z coord scaled 1000x
#   42.obj.portal.yrot2     tp yrot offset count
#   42.obj.portal.xrot2     id of paired elevator

#   =====tags=====
#   42.tag.portal.elevator              main tick
#   42.tag.portal.elevator.start        start pos
#   42.tag.portal.elevator.end          end pos
#   42.tag.portal.elevator.shut         door state
#   42.tag.portal.elevator.at_start     if snapped start
#   42.tag.portal.elevator.at_end       if snapped end
#   42.tag.portal.elevator.is_moving    if moving
#   42.tag.portal.elevator.off          won't run try_start