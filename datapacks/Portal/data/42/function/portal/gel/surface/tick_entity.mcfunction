execute at @s if entity @e[limit=1,tag=42.tag.portal.portal,distance=..20] run function 42:portal/generic/motion/store_motion

tag @s add 42.tag.portal.temp.gel_test
#execute if entity @s[type=player] run function 42:portal/gel/surface/stats
# TODO add `if entity @s[predicate=42:on_ground]` test back if MC-307880 is fixed
execute as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s positioned ~-.5 ~-.5 ~-.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=0,dy=1,dz=0] run function 42:portal/gel/effect/apply
execute if entity @s[predicate=!42:on_ground] run function 42:portal/gel/surface/tick_entity_range
tag @s remove 42.tag.portal.temp.gel_test

execute if entity @s[tag=!42.tag.portal.gel_effect.blue,tag=42.tag.portal.gel_effect.blue.test] run function 42:portal/gel/effect/blue/apply
execute if entity @s[tag=42.tag.portal.gel_effect.blue,tag=!42.tag.portal.gel_effect.blue.test] run function 42:portal/gel/effect/blue/remove

execute unless score @s 42.obj.portal.orange_gel_time matches 0..5 run scoreboard players set @s 42.obj.portal.orange_gel_time 0
execute if entity @s[tag=42.tag.portal.gel_effect.orange.test,scores={42.obj.portal.orange_gel_time=..4}] run scoreboard players add @s 42.obj.portal.orange_gel_time 1
execute if entity @s[tag=!42.tag.portal.gel_effect.orange.test,scores={42.obj.portal.orange_gel_time=1..}] run scoreboard players set @s 42.obj.portal.orange_gel_time 0
execute if entity @s[tag=!42.tag.portal.gel_effect.orange,scores={42.obj.portal.orange_gel_time=5..}] run function 42:portal/gel/effect/orange/apply
execute if entity @s[tag=42.tag.portal.gel_effect.orange,scores={42.obj.portal.orange_gel_time=..0}] run function 42:portal/gel/effect/orange/remove

tag @s[tag=42.tag.portal.gel_effect.blue.test] remove 42.tag.portal.gel_effect.blue.test
tag @s[tag=42.tag.portal.gel_effect.orange.test] remove 42.tag.portal.gel_effect.orange.test

execute if entity @s[tag=42.tag.portal.cancel_air_drag,predicate=42:on_ground,tag=!42.tag.portal.gel_effect.blue,tag=!42.tag.portal.gel_effect.orange] run function 42:portal/generic/cancel_air_drag_remove
execute if entity @s[type=player,tag=42.tag.portal.cancel_air_drag,tag=!42.tag.portal.gel_effect.blue,tag=!42.tag.portal.gel_effect.orange,nbt={abilities:{flying:true}}] run function 42:portal/generic/cancel_air_drag_remove