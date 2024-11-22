function 42:portal/launch/tag_id
scoreboard players add @s[scores={42.portal_cool=0..}] 42.portal_cool 1
scoreboard players remove @s[scores={42.portal_cool=..-1}] 42.portal_cool 1
execute store result entity @s[scores={42.portal_cool=0..}] Motion[0] double .001 run scoreboard players get @s 42.portal_x
execute store result entity @s[scores={42.portal_cool=0..}] Motion[2] double .001 run scoreboard players get @s 42.portal_z
ride @e[tag=42.portal_id,tag=!42.portal_motion_tp,limit=1,sort=nearest] mount @s
execute as @e[tag=42.portal_id,tag=!42.portal_motion_tp,limit=1,sort=nearest,type=player] run function 42:portal/player/schedule_actionbar
execute if score @s 42.portal_cool matches 0.. run effect give @e[tag=42.portal_id,tag=!42.portal_motion_tp,limit=1,sort=nearest] resistance 1 127 true
execute unless entity @e[tag=42.portal,distance=..1] run scoreboard players set @s[nbt={OnGround:1b},scores={42.portal_cool=10..}] 42.portal_cool -1
execute unless entity @e[tag=42.portal,distance=..1] if score @s 42.portal_cool matches 10.. at @s run function 42:portal/launch/valid_player_motion
execute if entity @s[scores={42.portal_cool=..-5}] on passengers run tag @s remove 42.portal_motion
kill @s[tag=42.portal_motion_tp,scores={42.portal_cool=..-5}]
tag @e remove 42.portal_id