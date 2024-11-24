playsound entity.item.break block @a ~ ~ ~ .3 .25
particle crit ~ ~ ~ .05 .05 .05 0 4 force
function 42:xltt/tag_id
tag @s remove 42.tag.xltt.id
execute as @a[tag=42.tag.xltt.id] at @s[tag=!42.tag.xltt.odm.motion] unless entity @e[type=marker,tag=42.tag.xltt.odm.wire,tag=42.tag.xltt.odm.hit,tag=42.tag.xltt.id,distance=..100] run function 42:xltt/odm/cancel
tag @e remove 42.tag.xltt.id
kill @s[type=marker]