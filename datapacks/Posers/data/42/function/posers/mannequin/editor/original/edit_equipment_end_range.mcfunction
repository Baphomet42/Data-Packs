playsound entity.armor_stand.break
# TODO position particles based on scale
execute on vehicle at @s run particle block_crumble{block_state:{Name:"minecraft:oak_planks"}} ~ ~1 ~ .3 .6 .3 0 5
execute on vehicle run kill @s[type=armor_stand,tag=42.tag.posers.mannequin.equipment_editor]
kill @s