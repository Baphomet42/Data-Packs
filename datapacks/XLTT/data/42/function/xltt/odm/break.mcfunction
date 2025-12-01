playsound entity.item.break block @a ~ ~ ~ .3 .25
particle crit ~ ~ ~ .05 .05 .05 0 4 force
function 42:xltt/match_id
tag @s add 42.tag.xltt.temp_break_marker
execute as @a[predicate=42:xltt/match_id] at @s unless entity @e[type=marker,tag=42.tag.xltt.odm.wire,tag=42.tag.xltt.odm.hit,predicate=42:xltt/match_id,tag=!42.tag.xltt.temp_break_marker,distance=..100] run function 42:xltt/odm/cancel
kill @s[type=marker]