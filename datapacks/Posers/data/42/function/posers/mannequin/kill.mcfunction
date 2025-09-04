function 42:posers/tag_id
execute as @e[type=mannequin,tag=42.tag.posers.id] at @s run function 42:posers/mannequin/drop_item
tag @e[type=mannequin,tag=42.tag.posers.id] add 42.tag.posers.temp_kill
function 42:posers/mannequin/unlink
kill @e[type=mannequin,tag=42.tag.posers.temp_kill]