item replace entity @e[type=mannequin,tag=42.tag.posers.mannequin.temp_editing,limit=1] weapon.mainhand from entity @s weapon.mainhand
item replace entity @e[type=mannequin,tag=42.tag.posers.mannequin.temp_editing,limit=1] weapon.offhand from entity @s weapon.offhand
item replace entity @e[type=mannequin,tag=42.tag.posers.mannequin.temp_editing,limit=1] armor.feet from entity @s armor.feet
item replace entity @e[type=mannequin,tag=42.tag.posers.mannequin.temp_editing,limit=1] armor.legs from entity @s armor.legs
item replace entity @e[type=mannequin,tag=42.tag.posers.mannequin.temp_editing,limit=1] armor.chest from entity @s armor.chest
item replace entity @e[type=mannequin,tag=42.tag.posers.mannequin.temp_editing,limit=1] armor.head from entity @s armor.head

data remove storage 42:posers temp
execute store result storage 42:posers temp.dist double .0005 run attribute @s scale get 1000
execute at @e[type=mannequin,tag=42.tag.posers.mannequin.temp_editing,limit=1] rotated ~ 0 run function 42:posers/mannequin/editor/original/edit_armor_equipment_tp with storage 42:posers temp
data remove storage 42:posers temp