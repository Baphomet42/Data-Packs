function 42:xltt/match_id
tag @e[predicate=42:xltt/match_id,tag=42.tag.xltt.odm.hit] add 42.tag.xltt.id

execute rotated as @e[tag=42.tag.xltt.id,limit=1,sort=nearest] run rotate @s ~ ~
scoreboard players set @s 42.obj.xltt.odm_motion 0

tag @e remove 42.tag.xltt.id