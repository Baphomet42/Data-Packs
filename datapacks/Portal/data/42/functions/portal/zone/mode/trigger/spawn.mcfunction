execute as @e[tag=42.portal_dropper] at @s if score @s 42.portal_id = @e[tag=42.portal_zone_this,limit=1] 42.portal_yrot1 run function 42:portal/dropper/drop
execute as @e[tag=42.portal_pellet_emitter] at @s if score @s 42.portal_id = @e[tag=42.portal_zone_this,limit=1] 42.portal_yrot1 run function 42:portal/pellet/emitter/shoot
execute as @e[tag=42.portal_spawner] at @s if score @s 42.portal_id = @e[tag=42.portal_zone_this,limit=1] 42.portal_yrot1 run function 42:portal/portal/spawner/power