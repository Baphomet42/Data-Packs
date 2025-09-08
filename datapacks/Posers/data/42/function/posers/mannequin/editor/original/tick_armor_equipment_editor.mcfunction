function 42:posers/match_id

item replace entity @e[type=mannequin,predicate=42:posers/match_id] weapon.mainhand from entity @s weapon.mainhand
item replace entity @e[type=mannequin,predicate=42:posers/match_id] weapon.offhand from entity @s weapon.offhand
item replace entity @e[type=mannequin,predicate=42:posers/match_id] armor.feet from entity @s armor.feet
item replace entity @e[type=mannequin,predicate=42:posers/match_id] armor.legs from entity @s armor.legs
item replace entity @e[type=mannequin,predicate=42:posers/match_id] armor.chest from entity @s armor.chest
item replace entity @e[type=mannequin,predicate=42:posers/match_id] armor.head from entity @s armor.head

data modify storage 42:posers temp set from entity @s
execute store result storage 42:posers temp.dist double .0005 run attribute @s scale get 1000
execute at @e[type=mannequin,predicate=42:posers/match_id,limit=1] rotated ~ 0 run function 42:posers/mannequin/editor/original/edit_armor_equipment_tp with storage 42:posers temp
data remove storage 42:posers temp

execute at @s unless entity @e[type=mannequin,predicate=42:posers/match_id] run function 42:posers/mannequin/editor/original/edit_equipment_end_range
execute at @s unless entity @a[distance=..8] run function 42:posers/mannequin/editor/original/edit_equipment_end_range