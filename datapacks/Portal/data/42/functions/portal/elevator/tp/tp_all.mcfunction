data remove storage 42.portal tp_temp
execute store result storage 42.portal tp_temp.x float 1 run scoreboard players get @s 42.portal_u
execute store result storage 42.portal tp_temp.y float 1 run scoreboard players get @s 42.portal_v
execute store result storage 42.portal tp_temp.z float 1 run scoreboard players get @s 42.portal_w
execute as @a[tag=42.portal_temp] at @s run function 42:portal/elevator/tp/tp with storage 42.portal tp_temp
execute as @p[tag=42.portal_temp] at @s as @e[tag=42.portal_elevator,tag=!42.portal_id] if score @s 42.portal_id = @e[tag=42.portal_id,tag=42.portal_elevator,limit=1] 42.portal_xrot2 at @s run function 42:portal/elevator/tp/dest
function 42:portal/tag_id