function 42:portal/launch/tag_id
scoreboard players add @s[scores={42.portal_time=0..}] 42.portal_time 1
scoreboard players remove @s[scores={42.portal_time=..-1}] 42.portal_time 1
execute store result entity @s[scores={42.portal_time=0..}] Motion[0] double .001 run scoreboard players get @s 42.portal_x
execute store result entity @s[scores={42.portal_time=0..}] Motion[2] double .001 run scoreboard players get @s 42.portal_z
ride @e[tag=42.portal_id,tag=!42.portal_launch_tp,limit=1,sort=nearest] mount @s
execute if score @s 42.portal_time matches 0.. run effect give @e[tag=42.portal_id,tag=!42.portal_launch_tp,limit=1,sort=nearest] resistance 1 127 true
scoreboard players set @s[nbt={OnGround:1b},scores={42.portal_time=10..}] 42.portal_time -1
kill @s[tag=42.portal_launch_tp,scores={42.portal_time=..-5}]
kill @s[tag=42.portal_launch_tp,scores={42.portal_time=200..}]
tag @e remove 42.portal_id