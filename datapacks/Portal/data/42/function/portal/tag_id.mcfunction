tag @e remove 42.tag.portal.id
scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.id
execute as @e[scores={42.obj.portal.id=-2147483648..2147483647}] if score @s 42.obj.portal.id = #42.var.portal.dummy 42.obj.portal.temp run tag @s add 42.tag.portal.id