execute as @e[tag=42.titan,tag=!42.titanAI] at @s run function 42:xltt/titan/tick_pos
execute as @e[tag=42.titan,scores={42.titan_time=1}] at @s run function 42:xltt/titan/tick_check
execute as @e[tag=42.titanAI] run data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:.42},{Name:generic.attack_damage,Base:45.0}]}
#
execute as @e[tag=42.titanHit] at @s if entity @a[distance=..20] if entity @s[nbt={attack:{}}] run function 42:xltt/titan/hurt
#
tag @e remove 42.titanAttack
execute at @e[tag=42.titanAI] as @e[type=#42:titan_targets,distance=..3] run tag @s add 42.titanAttack
execute at @e[tag=42.titanAI] positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^2.5 as @e[type=#42:titan_targets,distance=..3] run tag @s add 42.titanAttack
execute at @e[tag=42.titanAI] positioned ~ ~3.5 ~ rotated ~ 0 positioned ^ ^ ^2.5 as @e[type=#42:titan_targets,distance=..3] run tag @s add 42.titanAttack
execute at @e[tag=42.titanAI] positioned ~ ~6 ~ rotated ~ 0 positioned ^ ^ ^2.5 as @e[type=#42:titan_targets,distance=..3] run tag @s add 42.titanAttack
execute at @e[tag=42.titanAI] positioned ~-3 ~8 ~-3 as @e[type=#42:titan_targets,dx=6,dy=5,dz=6] run tag @s add 42.titanAttack
scoreboard players add @e[tag=42.titanAttack] 42.titan_time 2
scoreboard players set @e[tag=42.titanAttack,scores={42.titan_time=41..}] 42.titan_time 30
scoreboard players add @e[type=#42:titan_targets,scores={42.titan_time=..-1}] 42.titan_time 1
scoreboard players remove @e[type=#42:titan_targets,scores={42.titan_time=1..},tag=!42.titanAttack] 42.titan_time 1
execute as @e[tag=42.titanAI,scores={42.titan_time=4}] unless entity @s[nbt={ActiveEffects:[{Id:17}]}] at @s run function 42:xltt/titan/try_attack
#
execute as @e[tag=42.titanAI,scores={42.titan_time=3}] at @s run function 42:xltt/titan/move
effect clear @e[tag=42.titanBody,scores={42.titan_time=1}] invisibility
#
scoreboard players add @e[tag=42.titan] 42.titan_time 1
scoreboard players set @e[tag=42.titan,scores={42.titan_time=5..}] 42.titan_time 0