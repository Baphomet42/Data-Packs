function 42:xltt/tag_id
execute unless entity @e[tag=42.tag.xltt.titan,tag=42.tag.xltt.id,limit=1] run kill @e[tag=42.tag.xltt.id,tag=42.tag.xltt.titan.group]
tag @e remove 42.tag.xltt.id