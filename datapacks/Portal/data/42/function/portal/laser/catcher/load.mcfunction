$scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id $(id)
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher] 42.obj.portal.lvl $(lvl)
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher] 42.obj.portal.link $(link)
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher] 42.obj.portal.var.z $(z)
execute if data storage 42:portal loader.temp_entity.tag_nolaser as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.laser.catcher] at @s run function 42:portal/laser/catcher/cycle_silent