execute on vehicle run tag @s add 42.tag.posers.temp_detect_death
execute unless entity @e[type=mannequin,tag=42.tag.posers.temp_detect_death] on vehicle run function 42:posers/mannequin/detect_dying
tag @e[type=mannequin] remove 42.tag.posers.temp_detect_death