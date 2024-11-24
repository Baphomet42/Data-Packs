scoreboard players operation @s 42.obj.portal.temp = @s 42.obj.portal.var.x
scoreboard players operation @s 42.obj.portal.var.x = @s 42.obj.portal.var.z
scoreboard players operation @s 42.obj.portal.var.z = @s 42.obj.portal.temp

function 42:portal/tag_id
execute as @e[tag=42.tag.portal.launch.group,tag=42.tag.portal.id] at @s run rotate @s ~90 ~
tag @e remove 42.tag.portal.id

scoreboard players set @s 42.obj.portal.temp -1
execute if entity @s[y_rotation=0] run scoreboard players operation @s 42.obj.portal.var.x *= @s 42.obj.portal.temp
execute if entity @s[y_rotation=90] run scoreboard players operation @s 42.obj.portal.var.x *= @s 42.obj.portal.temp
execute if entity @s[y_rotation=180] run scoreboard players operation @s 42.obj.portal.var.x *= @s 42.obj.portal.temp
execute if entity @s[y_rotation=-90] run scoreboard players operation @s 42.obj.portal.var.x *= @s 42.obj.portal.temp