$scoreboard players set @e[tag=42.portal_launch_spawn] 42.portal_id $(id)
$scoreboard players set @e[tag=42.portal_launch_spawn,tag=42.portal_launch] 42.portal_lvl $(lvl)
$scoreboard players set @e[tag=42.portal_launch_spawn,tag=42.portal_launch] 42.portal_x $(x)
$scoreboard players set @e[tag=42.portal_launch_spawn,tag=42.portal_launch] 42.portal_y $(y)
$scoreboard players set @e[tag=42.portal_launch_spawn,tag=42.portal_launch] 42.portal_z $(z)
$execute as @e[tag=42.portal_launch_spawn] at @s run tp @s ~ ~ ~ $(rotation) ~