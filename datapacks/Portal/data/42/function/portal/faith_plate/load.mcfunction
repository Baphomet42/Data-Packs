$scoreboard players set @e[tag=42.tag.portal.faith_plate.spawn] 42.obj.portal.id $(id)
$scoreboard players set @e[tag=42.tag.portal.faith_plate.spawn,tag=42.tag.portal.faith_plate] 42.obj.portal.lvl $(lvl)
$scoreboard players set @e[tag=42.tag.portal.faith_plate.spawn,tag=42.tag.portal.faith_plate] 42.obj.portal.var.x $(x)
$scoreboard players set @e[tag=42.tag.portal.faith_plate.spawn,tag=42.tag.portal.faith_plate] 42.obj.portal.var.y $(y)
$scoreboard players set @e[tag=42.tag.portal.faith_plate.spawn,tag=42.tag.portal.faith_plate] 42.obj.portal.var.z $(z)
$execute as @e[tag=42.tag.portal.faith_plate.spawn] at @s run rotate @s $(rotation) ~