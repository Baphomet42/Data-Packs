$scoreboard players set @e[tag=42.tag.portal.temp] 42.obj.portal.id $(id)
$scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] 42.obj.portal.lvl $(lvl)
$scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] 42.obj.portal.link $(link)
$scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] 42.obj.portal.var.x $(x)
$execute as @e[tag=42.tag.portal.temp] at @s run rotate @s $(rotation) ~