execute as @a unless score @s 42.obj.xltt.id matches 1.. run function 42:xltt/id

# odm
scoreboard players remove @a[scores={42.obj.xltt.odm_use=1..}] 42.obj.xltt.odm_use 1
scoreboard players remove @a[scores={42.obj.xltt.odm_cooldown=1..}] 42.obj.xltt.odm_cooldown 1
scoreboard players set @a 42.obj.xltt.odm_motion 0
execute as @a[predicate=42:input_sneak] if items entity @s weapon.* *[custom_data~{42data:{xltt:{odm:{}}}}] at @s run function 42:xltt/odm/attempt_pull
execute as @a[tag=42.tag.xltt.odm.lev,predicate=!42:input_sneak] at @s run function 42:xltt/odm/cancel
execute as @e[type=marker,tag=42.tag.xltt.odm.wire,tag=!42.tag.xltt.odm.hit] at @s run function 42:xltt/odm/find_target
execute as @e[type=marker,tag=42.tag.xltt.odm.wire,tag=42.tag.xltt.odm.hit] at @s run function 42:xltt/odm/attempt_break
execute as @a[tag=42.tag.xltt.odm.sound,predicate=42:xltt/fly_speed_test] run function 42:xltt/odm/sound_loop
execute as @a[tag=42.tag.xltt.odm.sound,predicate=!42:xltt/fly_speed_test] run function 42:xltt/odm/sound_cancel
execute as @a[tag=42.tag.xltt.odm.air_drag_modifier,predicate=42:on_ground] run function 42:xltt/odm/return_air_drag

# titan
execute as @e[type=area_effect_cloud,tag=42.tag.xltt.titan.spawn_effect] at @s run summon lightning_bolt ~ ~7.75 ~
execute as @e[type=area_effect_cloud,tag=42.tag.xltt.titan.spawn_marker] at @s run function 42:xltt/titan/spawn
kill @e[type=area_effect_cloud,tag=42.tag.xltt.titan.spawn_marker]
execute as @e[tag=42.tag.xltt.titan] at @s run function 42:xltt/titan/tick
execute as @e[tag=42.tag.xltt.titan.cloud] at @s run playsound block.fire.extinguish hostile @a ~ ~ ~ .25
execute as @e[tag=42.tag.xltt.titan.hit,limit=1,sort=random] run function 42:xltt/titan/check_interaction

scoreboard players add @e[type=villager,tag=42.tag.xltt.titan.transforming] 42.obj.xltt.odm_time 1
execute as @e[type=villager,tag=42.tag.xltt.titan.transforming,scores={42.obj.xltt.odm_time=40..}] at @s run function 42:xltt/titan/transform

# wine
execute as @e[type=experience_bottle,nbt={Item:{components:{"minecraft:custom_data":{42data:{xltt:{wine:{}}}}}}}] at @s run function 42:xltt/wine/spawn
execute as @e[type=marker,tag=42.tag.xltt.wine] at @s run particle dust{color:[.24,.04,.08],scale:1}
execute as @e[type=marker,tag=42.tag.xltt.wine] at @s unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:vehicle":{}}} run function 42:xltt/wine/hit
execute at @e[tag=42.tag.xltt.titan.appear] run particle flash{color:[1,1,1,1]} ~ ~5 ~ 1 2 1 0 15 force
execute at @e[tag=42.tag.xltt.titan.appear] run playsound entity.allay.death hostile @a[distance=..200] ~ ~ ~ 20 2
scoreboard players add @e[tag=42.tag.xltt.titan.appear] 42.obj.xltt.titan_time 1
kill @e[type=marker,tag=42.tag.xltt.titan.appear,scores={42.obj.xltt.titan_time=40..}]

# end
schedule function 42:xltt/tick 1t replace