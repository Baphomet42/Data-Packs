function 42:portal/launch/tag_id
scoreboard players add @s[scores={42.obj.portal.cool=0..}] 42.obj.portal.cool 1
scoreboard players remove @s[scores={42.obj.portal.cool=..-1}] 42.obj.portal.cool 1
execute store result entity @s[scores={42.obj.portal.cool=0..}] Motion[0] double .001 run scoreboard players get @s 42.obj.portal.var.x
execute store result entity @s[scores={42.obj.portal.cool=0..}] Motion[2] double .001 run scoreboard players get @s 42.obj.portal.var.z
ride @e[limit=1,tag=42.tag.portal.id,tag=!42.tag.portal.motion.tp,sort=nearest] mount @s
execute as @a[limit=1,tag=42.tag.portal.id,tag=!42.tag.portal.motion.tp,sort=nearest] run function 42:portal/player/schedule_actionbar
execute if score @s 42.obj.portal.cool matches 0.. run effect give @e[limit=1,tag=42.tag.portal.id,tag=!42.tag.portal.motion.tp,sort=nearest] resistance 1 127 true
execute unless entity @e[limit=1,tag=42.tag.portal.portal,distance=..1] run scoreboard players set @s[nbt={OnGround:true},scores={42.obj.portal.cool=10..}] 42.obj.portal.cool -1
execute unless entity @e[limit=1,tag=42.tag.portal.portal,distance=..1] if score @s 42.obj.portal.cool matches 10.. at @s run function 42:portal/launch/valid_player_motion
execute if entity @s[scores={42.obj.portal.cool=..-5}] on passengers run tag @s remove 42.tag.portal.motion
kill @s[tag=42.tag.portal.motion.tp,scores={42.obj.portal.cool=..-5}]
tag @e remove 42.tag.portal.id