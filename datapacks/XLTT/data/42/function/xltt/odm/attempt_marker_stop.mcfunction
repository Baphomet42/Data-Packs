function 42:xltt/tag_id
execute unless entity @a[tag=42.xltt_id,tag=42.odm_motion] run tag @s add 42.odm_break_marker
tag @e remove 42.xltt_id
execute if entity @s[tag=42.odm_break_marker] run kill @s