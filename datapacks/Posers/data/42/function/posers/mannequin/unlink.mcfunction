function 42:posers/tag_id

kill @e[type=interaction,tag=42.tag.posers.id]
kill @e[type=marker,tag=42.tag.posers.id]
kill @e[type=armor_stand,tag=42.tag.posers.id]
tag @e[type=mannequin,tag=42.tag.posers.id] remove 42.tag.posers.mannequin
scoreboard players reset @e[type=mannequin,tag=42.tag.posers.id] 42.obj.posers.id

tag @e remove 42.tag.posers.id