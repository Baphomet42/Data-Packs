execute on origin run tag @s add 42.tag.posers.mannequin.temp_editing

execute on vehicle if entity @s[type=armor_stand,tag=42.tag.posers.mannequin.equipment_editor] run function 42:posers/mannequin/editor/original/tick_armor_equipment_editor

execute unless entity @e[type=mannequin,tag=42.tag.posers.mannequin.temp_editing,limit=1] run function 42:posers/mannequin/editor/original/edit_equipment_end_range
# TODO distance based on scale
 execute on vehicle at @s unless entity @a[distance=..20] run function 42:posers/mannequin/editor/original/edit_equipment_end_range

execute on origin run tag @s remove 42.tag.posers.mannequin.temp_editing