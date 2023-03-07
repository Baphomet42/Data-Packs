execute as @a unless entity @s[scores={42.xltt_id=1..}] run function 42:xltt/id
#
#odm
execute as @a[scores={42.xltt_click=1..},nbt={SelectedItem:{tag:{odm:1b}}}] run tag @s add 42.odm_click
execute as @a[scores={42.xltt_click=1..},nbt={Inventory:[{Slot:-106b,tag:{odm:1b}}]}] run tag @s add 42.odm_click
execute as @a[tag=42.odm_click] at @s run function 42:xltt/odm/use
execute as @a[scores={42.xltt_sneak=1..},nbt={SelectedItem:{tag:{odm:1b}}}] run tag @s add 42.odm_pull
execute as @a[scores={42.xltt_sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{odm:1b}}]}] run tag @s add 42.odm_pull
execute as @a[tag=42.odm_pull] at @s run function 42:xltt/odm/attempt_pull
execute as @a[tag=42.odm_lev,scores={42.xltt_sneak=0}] at @s run function 42:xltt/odm/cancel
execute as @e[type=marker,tag=42.odm_wire,tag=!42.odm_hit] at @s run function 42:xltt/odm/find_target
execute as @e[type=marker,tag=42.odm_wire,tag=42.odm_hit] at @s run function 42:xltt/odm/attempt_break
execute as @e[tag=42.odm_marker] at @s run function 42:xltt/odm/attempt_marker_stop
execute as @a[tag=42.odm_motion] at @s run function 42:xltt/odm/motion
#
#titan
execute as @e[type=area_effect_cloud,tag=42.xltt_spawn_titan_effect] at @s run summon lightning_bolt ~ ~7.75 ~
execute as @e[type=area_effect_cloud,tag=42.xltt_spawn_titan] at @s run function 42:xltt/titan/spawn
kill @e[type=area_effect_cloud,tag=42.xltt_spawn_titan]
execute if entity @e[tag=42.titan] run function 42:xltt/titan/tick
execute as @e[tag=42.titanCloud] at @s run playsound block.fire.extinguish hostile @a ~ ~ ~ .25
#
scoreboard players add @e[type=villager,tag=42.xltt_transform] 42.odm_time 1
execute as @e[type=villager,tag=42.xltt_transform,scores={42.odm_time=40..}] at @s run function 42:xltt/titan/transform
#
#wine
execute as @e[type=experience_bottle,nbt={Item:{tag:{42titan:1b}}}] at @s run function 42:xltt/wine/spawn
execute as @e[tag=42.xltt_wine,type=marker] at @s run particle dust .24 .04 .08 1
execute as @e[tag=42.xltt_wine,type=marker] at @s unless entity @e[tag=42.xltt_wine,type=potion,distance=...2] run function 42:xltt/wine/hit
execute at @e[tag=42.titan_appear] run particle flash ~ ~5 ~ 1 2 1 0 15 force
execute at @e[tag=42.titan_appear] run playsound entity.allay.death hostile @a[distance=..200] ~ ~ ~ 20 2
scoreboard players add @e[tag=42.titan_appear] 42.titan_time 1
kill @e[type=marker,tag=42.titan_appear,scores={42.titan_time=40..}]
#
#end
scoreboard players set @a 42.xltt_click 0
scoreboard players set @a 42.xltt_sneak 0
#
schedule function 42:xltt/tick 1t replace