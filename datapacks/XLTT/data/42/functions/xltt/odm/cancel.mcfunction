tag @s remove 42.odm_cancel
#effect clear @s[tag=!42.odm_fly] levitation
attribute @s generic.gravity modifier remove 8d8efb8b-0edb-48c4-aff2-c94ff77e82f0
effect clear @s[tag=!42.odm_fly] slow_falling
stopsound @s[tag=!42.odm_fly] player item.elytra.flying
scoreboard players set @s[tag=!42.odm_fly] 42.odm_time 0
tag @s remove 42.odm_lev
execute if entity @s[tag=42.odm_fly] at @s run function 42:xltt/odm/get_motion
tag @s remove 42.odm_fly