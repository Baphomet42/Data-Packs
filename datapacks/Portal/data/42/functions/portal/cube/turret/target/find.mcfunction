tag @e remove 42.portal_turret_target
tag @e remove 42.portal_turret_current
tag @a[distance=..42,gamemode=!spectator] add 42.portal_turret_target
tag @e[distance=..42,type=villager] add 42.portal_turret_target
execute at @e[tag=42.portal_turret_target,limit=1,sort=nearest] at @s run function 42:portal/cube/turret/target/range