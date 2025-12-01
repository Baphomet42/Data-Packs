tag @s remove 42.tag.xltt.odm.cancel
attribute @s gravity modifier remove 42:xltt/odm/gravity
effect clear @s[tag=!42.tag.xltt.odm.fly] slow_falling
stopsound @s[tag=!42.tag.xltt.odm.fly] player item.elytra.flying
scoreboard players set @s[tag=!42.tag.xltt.odm.fly] 42.obj.xltt.odm_time 0
tag @s remove 42.tag.xltt.odm.lev
tag @s remove 42.tag.xltt.odm.fly