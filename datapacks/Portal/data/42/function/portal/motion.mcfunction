execute if entity @s[tag=42.tag.portal.motion.tp_player] run function 42:portal/motion_player
execute if entity @s[tag=!42.tag.portal.motion.tp_player] run function 42:portal/motion_entity
execute if entity @s[nbt={OnGround:false}] store result score #42.var.portal.dummy 42.obj.portal.temp run data get entity @s Motion[1] 1000
execute if entity @s[nbt={OnGround:false}] if score #42.var.portal.dummy 42.obj.portal.temp matches ..-100 run scoreboard players operation @s 42.obj.portal.var.y = #42.var.portal.dummy 42.obj.portal.temp
execute if entity @s[nbt={OnGround:false}] if score #42.var.portal.dummy 42.obj.portal.temp matches 100.. run scoreboard players operation @s 42.obj.portal.var.y = #42.var.portal.dummy 42.obj.portal.temp