function 42:xltt/tag_id
execute unless entity @e[tag=42.xltt_titan,tag=42.xltt_id,limit=1] run kill @e[tag=42.xltt_id,tag=42.xltt_titan_group]
tag @e remove 42.xltt_id