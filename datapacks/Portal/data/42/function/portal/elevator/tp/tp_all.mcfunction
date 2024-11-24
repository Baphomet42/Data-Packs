data remove storage 42:portal tp_temp
execute store result storage 42:portal tp_temp.x float 1 run scoreboard players get @s 42.obj.portal.var.u
execute store result storage 42:portal tp_temp.y float 1 run scoreboard players get @s 42.obj.portal.var.v
execute store result storage 42:portal tp_temp.z float 1 run scoreboard players get @s 42.obj.portal.var.w
execute as @a[tag=42.tag.portal.temp] at @s run function 42:portal/elevator/tp/tp with storage 42:portal tp_temp
execute as @p[tag=42.tag.portal.temp] at @s as @e[tag=42.tag.portal.elevator,tag=!42.tag.portal.id] if score @s 42.obj.portal.id = @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator,limit=1] 42.obj.portal.xrot2 at @s run function 42:portal/elevator/tp/dest
data remove storage 42:portal tp_temp
function 42:portal/tag_id