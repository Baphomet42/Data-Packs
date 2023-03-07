playsound entity.item.break block @a ~ ~ ~ .15 .25
particle crit ~ ~ ~ .05 .05 .05 0 4 force
function 42:xltt/tag_id
execute as @a[tag=42.xltt_id] at @s[tag=!42.odm_motion] unless entity @e[type=marker,tag=42.odm_wire,tag=42.odm_hit,tag=42.xltt_id,distance=..100] run function 42:xltt/odm/cancel
tag @e remove 42.xltt_id
kill @s[type=marker]