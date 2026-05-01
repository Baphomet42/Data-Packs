tag @s remove 42.tag.portal.player.is_flying
tag @s[nbt={abilities:{flying:true}}] add 42.tag.portal.player.is_flying
execute if entity @s[tag=!42.tag.portal.player.is_flying] if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0..}] run function 42:portal/portal/tp/tp_player
execute if entity @s[tag=!42.tag.portal.player.is_flying] if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=..-1}] run function 42:portal/portal/tp/tp_player_air
execute if entity @s[tag=42.tag.portal.player.is_flying] run function 42:portal/portal/tp/tp_player_flying
tag @s remove 42.tag.portal.player.is_flying