tag @s remove 42.tag.xltt.odm.cancel
attribute @s gravity modifier remove 42:xltt_odm_gravity
effect clear @s[tag=!42.tag.xltt.odm.fly] slow_falling
stopsound @s[tag=!42.tag.xltt.odm.fly] player item.elytra.flying
scoreboard players set @s[tag=!42.tag.xltt.odm.fly] 42.obj.xltt.odm_time 0
tag @s remove 42.tag.xltt.odm.lev
execute if entity @s[tag=42.tag.xltt.odm.fly] at @s run function 42:xltt/odm/get_motion
tag @s remove 42.tag.xltt.odm.fly