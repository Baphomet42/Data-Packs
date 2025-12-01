function 42:xltt/match_id
tag @e[predicate=42:xltt/match_id,tag=42.tag.xltt.odm.hit] add 42.tag.xltt.id

rotate @e[tag=42.tag.xltt.id,limit=1,sort=nearest] ~ ~
execute facing entity @e[tag=42.tag.xltt.id,limit=1,sort=nearest] feet run rotate @s ~ ~

tag @e remove 42.tag.xltt.id