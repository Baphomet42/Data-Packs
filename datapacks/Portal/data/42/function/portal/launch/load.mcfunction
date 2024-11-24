$scoreboard players set @e[tag=42.tag.portal.launch.spawn] 42.obj.portal.id $(id)
$scoreboard players set @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch] 42.obj.portal.lvl $(lvl)
$scoreboard players set @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch] 42.obj.portal.var.x $(x)
$scoreboard players set @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch] 42.obj.portal.var.y $(y)
$scoreboard players set @e[tag=42.tag.portal.launch.spawn,tag=42.tag.portal.launch] 42.obj.portal.var.z $(z)
$execute as @e[tag=42.tag.portal.launch.spawn] at @s run rotate @s $(rotation) ~