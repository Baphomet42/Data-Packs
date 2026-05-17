scoreboard players operation #42.var.portal.dummy 42.obj.portal.vars = @s 42.obj.portal.var.a
execute as @a if score @s 42.obj.portal.lvl = #42.var.portal.dummy 42.obj.portal.vars run return fail

scoreboard players operation @s 42.obj.portal.lvl = @s 42.obj.portal.var.a
function 42:portal/level/unload
scoreboard players operation @s 42.obj.portal.lvl = @s 42.obj.portal.var.b