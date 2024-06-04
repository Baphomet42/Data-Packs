$scoreboard players set @e[tag=42.portal_new_spawn] 42.portal_id $(id)
$scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_emitter] 42.portal_lvl $(lvl)
$scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_pellet_emitter] 42.portal_z $(z)
execute if data storage 42:portal loader.temp_entity.tag_spawn_super_pellet run execute as @e[tag=42.portal_new_spawn,tag=42.portal_pellet_emitter] at @s run function 42:portal/pellet/emitter/cycle_silent