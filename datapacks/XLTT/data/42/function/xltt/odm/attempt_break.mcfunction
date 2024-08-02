execute if block ~ ~ ~ #42:projectile_pass run function 42:xltt/odm/break
function 42:xltt/tag_id
tag @s add 42.temp_attempt_break
execute unless entity @a[tag=42.xltt_id,limit=1,distance=..100] run function 42:xltt/odm/break
execute as @a[tag=42.xltt_id,limit=1] unless items entity @s weapon.mainhand *[custom_data~{42xltt_odm:1b}] unless items entity @s weapon.offhand *[custom_data~{42xltt_odm:1b}] as @e[tag=42.temp_attempt_break,limit=1] run function 42:xltt/odm/break
tag @s remove 42.temp_attempt_break
tag @e remove 42.xltt_id