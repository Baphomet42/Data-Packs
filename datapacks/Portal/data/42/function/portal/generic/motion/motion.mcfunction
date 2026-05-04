scoreboard players add @s[scores={42.obj.portal.cool=0..}] 42.obj.portal.cool 1
scoreboard players remove @s[scores={42.obj.portal.cool=..-1}] 42.obj.portal.cool 1
execute unless entity @e[limit=1,tag=42.tag.portal.portal,distance=..1] run scoreboard players set @s[predicate=42:on_ground,scores={42.obj.portal.cool=10..}] 42.obj.portal.cool -1
execute if score @s 42.obj.portal.cool matches ..-1 run attribute @s minecraft:friction_modifier modifier remove 42:portal/motion
execute if entity @s[scores={42.obj.portal.cool=..-5}] run function 42:portal/generic/motion/end
execute if entity @s[type=player,nbt={abilities:{flying:true}}] run function 42:portal/generic/motion/end

#execute unless predicate 42:on_ground store result score #42.var.portal.dummy 42.obj.portal.temp run data get entity @s Motion[1] 1000
#execute unless predicate 42:on_ground if score #42.var.portal.dummy 42.obj.portal.temp matches ..-100 run scoreboard players operation @s 42.obj.portal.var.y = #42.var.portal.dummy 42.obj.portal.temp
#execute unless predicate 42:on_ground if score #42.var.portal.dummy 42.obj.portal.temp matches 100.. run scoreboard players operation @s 42.obj.portal.var.y = #42.var.portal.dummy 42.obj.portal.temp