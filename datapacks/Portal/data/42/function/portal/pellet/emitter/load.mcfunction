$scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id $(id)
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.emitter] 42.obj.portal.lvl $(lvl)
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.emitter] 42.obj.portal.var.z $(z)
execute if data storage 42:portal loader.temp_entity.tag_spawn_super_pellet as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.pellet.emitter] at @s run function 42:portal/pellet/emitter/cycle_silent