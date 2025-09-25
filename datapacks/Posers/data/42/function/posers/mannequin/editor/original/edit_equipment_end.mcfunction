tag @s add 42.tag.posers.mannequin.temp_kill
execute as @e[type=area_effect_cloud,tag=42.tag.posers.mannequin.equipment_editor_cloud] if function 42:posers/mannequin/editor/original/edit_equipment_end_test run kill @s
tag @s remove 42.tag.posers.mannequin.temp_kill