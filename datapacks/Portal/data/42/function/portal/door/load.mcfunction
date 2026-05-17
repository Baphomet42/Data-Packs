$scoreboard players set @e[tag=42.tag.portal.temp] 42.obj.portal.id $(id)
execute store result score @e[tag=42.tag.portal.temp,tag=42.tag.portal.door] 42.obj.portal.lvl run data get storage 42:portal loader.lvl
$scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.door] 42.obj.portal.link $(link)
$scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.door] 42.obj.portal.var.x $(x)