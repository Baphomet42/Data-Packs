scoreboard players set @e[tag=42.portal_turret_laser,limit=1] 42.portal_time 150
execute as @e[tag=42.portal_turret_laser,limit=1] at @s run function 42:portal/cube/turret/target/laser_move

tag @e[tag=42.portal_turret_target_current,limit=1] add 42.portal.turret.target.tempvalid
tag @e[tag=42.portal_turret_laser,limit=1] add 42.portal.turret.target.tempvalid
execute at @s as @n[tag=42.portal.turret.target.tempvalid] unless entity @s[tag=42.portal_turret_laser] run tag @e[tag=42.portal_turret_target_current,limit=1] add 42.portal_turret_current
tag @e[tag=42.portal.turret.target.tempvalid,limit=2] remove 42.portal.turret.target.tempvalid

execute if entity @e[tag=42.portal_turret_current] at @e[tag=42.portal_turret_laser,limit=1] run function 42:portal/cube/turret/target/new