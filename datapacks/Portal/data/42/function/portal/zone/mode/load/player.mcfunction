function 42:portal/level/unload
scoreboard players operation @s 42.obj.portal.lvl = @e[tag=42.tag.portal.zone.this,limit=1] 42.obj.portal.lvl
execute if score @s 42.obj.portal.lvl matches ..-1 run scoreboard players set @s 42.obj.portal.lvl 0
execute if entity @e[tag=42.tag.portal.zone.this,tag=42.tag.portal.zone.checkpoint,scores={42.obj.portal.var.x=0}] at @e[tag=42.tag.portal.zone.this] rotated as @s run spawnpoint @s ~ ~ ~ ~ ~
function 42:portal/portal/clear