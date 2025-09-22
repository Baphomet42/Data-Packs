execute unless entity @s[type=mannequin,tag=42.tag.posers.mannequin] run return fail
execute if function 42:posers/mannequin/editor/original/is_editing run return fail

data modify storage 42:posers temp set from entity @s
execute store result storage 42:posers temp.dist double .0005 run attribute @s scale get 1000
execute at @s rotated ~ 0 run function 42:posers/mannequin/editor/original/edit_equipment_macro with storage 42:posers temp
data remove storage 42:posers temp

data modify entity @e[type=area_effect_cloud,tag=42.tag.posers.new_spawn,limit=1] Owner set from entity @s UUID

item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] weapon.mainhand from entity @s weapon.mainhand
item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] weapon.offhand from entity @s weapon.offhand
item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] armor.feet from entity @s armor.feet
item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] armor.legs from entity @s armor.legs
item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] armor.chest from entity @s armor.chest
item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] armor.head from entity @s armor.head

tag @e remove 42.tag.posers.new_spawn