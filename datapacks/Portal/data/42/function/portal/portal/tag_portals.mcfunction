tag @e remove 42.tag.portal.temp_tag_portals
scoreboard players set #42.var.portal.dummy 42.obj.portal.temp 0
execute store result score #42.var.portal.dummy 42.obj.portal.temp run data get entity @s UUID[0]
execute as @e[tag=42.tag.portal.portal] if score @s 42.obj.portal.id = #42.var.portal.dummy 42.obj.portal.temp run tag @s add 42.tag.portal.temp_tag_portals
execute unless entity @s[type=player] run tag @e remove 42.tag.portal.temp_tag_portals