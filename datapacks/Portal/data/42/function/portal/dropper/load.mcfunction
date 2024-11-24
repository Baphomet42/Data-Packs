$scoreboard players set @e[tag=42.tag.portal.temp] 42.obj.portal.id $(id)
$scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] 42.obj.portal.lvl $(lvl)
$scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] 42.obj.portal.link $(link)
$scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] 42.obj.portal.skin $(skin)
$scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] 42.obj.portal.var.x $(x)

scoreboard players remove @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] 42.obj.portal.skin 1
scoreboard players remove @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] 42.obj.portal.var.x 1
execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] at @s run function 42:portal/dropper/skin
execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.dropper] at @s run function 42:portal/dropper/cycle_silent