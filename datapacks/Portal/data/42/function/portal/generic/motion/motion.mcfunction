scoreboard players add @s[scores={42.obj.portal.cool=0..}] 42.obj.portal.cool 1
scoreboard players remove @s[scores={42.obj.portal.cool=..-1}] 42.obj.portal.cool 1
execute unless entity @e[limit=1,tag=42.tag.portal.portal,distance=..1] run scoreboard players set @s[predicate=42:on_ground,scores={42.obj.portal.cool=10..}] 42.obj.portal.cool -1
execute if score @s 42.obj.portal.cool matches ..-1 run attribute @s minecraft:friction_modifier modifier remove 42:portal/motion
execute if entity @s[scores={42.obj.portal.cool=..-5}] run return run function 42:portal/generic/motion/end
execute if predicate 42:has_vehicle run return run function 42:portal/generic/motion/end
execute if entity @s[type=player,nbt={abilities:{flying:true}}] run return run function 42:portal/generic/motion/end