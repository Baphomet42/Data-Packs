execute if entity @s[tag=42.tag.portal.motion.tp_player] run function 42:portal/generic/motion/motion_player
execute if entity @s[tag=!42.tag.portal.motion.tp_player] run function 42:portal/generic/motion/motion_entity
execute unless predicate 42:on_ground store result score #42.var.portal.dummy 42.obj.portal.temp run data get entity @s Motion[1] 1000
execute unless predicate 42:on_ground if score #42.var.portal.dummy 42.obj.portal.temp matches ..-100 run scoreboard players operation @s 42.obj.portal.var.y = #42.var.portal.dummy 42.obj.portal.temp
execute unless predicate 42:on_ground if score #42.var.portal.dummy 42.obj.portal.temp matches 100.. run scoreboard players operation @s 42.obj.portal.var.y = #42.var.portal.dummy 42.obj.portal.temp