tag @s add 42.tag.posers.mannequin.temp_is_editing
execute as @e[type=area_effect_cloud,tag=42.tag.posers.mannequin.equipment_editor_cloud] on origin if entity @s[tag=42.tag.posers.mannequin.temp_is_editing] run return run tag @s remove 42.tag.posers.mannequin.temp_is_editing
tag @s remove 42.tag.posers.mannequin.temp_is_editing
return fail