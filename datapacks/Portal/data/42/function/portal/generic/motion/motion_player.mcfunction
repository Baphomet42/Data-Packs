function 42:portal/launch/tag_launch_id
scoreboard players add @s[scores={42.obj.portal.cool=0..}] 42.obj.portal.cool 1
scoreboard players remove @s[scores={42.obj.portal.cool=..-1}] 42.obj.portal.cool 1
#execute store result entity @s[scores={42.obj.portal.cool=0..}] Motion[0] double .001 run scoreboard players get @s 42.obj.portal.var.x
#execute store result entity @s[scores={42.obj.portal.cool=0..}] Motion[2] double .001 run scoreboard players get @s 42.obj.portal.var.z
ride @e[limit=1,tag=42.tag.portal.temp_motion_id,tag=!42.tag.portal.motion.tp,sort=nearest] mount @s
execute as @a[limit=1,tag=42.tag.portal.temp_motion_id,tag=!42.tag.portal.motion.tp,sort=nearest] run function 42:portal/player/schedule_actionbar
execute unless entity @e[limit=1,tag=42.tag.portal.portal,distance=..1] run scoreboard players set @s[predicate=42:on_ground,scores={42.obj.portal.cool=10..}] 42.obj.portal.cool -1
execute if score @s 42.obj.portal.cool matches ..-1 run attribute @s minecraft:friction_modifier modifier remove 42:portal/motion
execute unless entity @e[limit=1,tag=42.tag.portal.portal,distance=..1] if score @s 42.obj.portal.cool matches 10.. at @s run function 42:portal/launch/valid_player_motion
execute if function 42:portal/generic/motion/test_passenger_spectator run function 42:portal/generic/motion/end_player
execute if entity @s[scores={42.obj.portal.cool=..-5}] run function 42:portal/generic/motion/end_player
tag @e remove 42.tag.portal.temp_motion_id