function 42:portal/level/unload
scoreboard players operation @s 42.obj.portal.lvl = @e[tag=42.tag.portal.zone.this,limit=1] 42.obj.portal.lvl
execute if score @s 42.obj.portal.lvl matches ..-1 run scoreboard players set @s 42.obj.portal.lvl 0
function 42:portal/portal/clear
execute as @e[tag=42.tag.portal.elevator.main] at @s run function 42:portal/elevator/refresh_show_state