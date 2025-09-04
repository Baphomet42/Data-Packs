execute unless entity @s[type=mannequin,tag=42.tag.posers.mannequin] run return fail
execute if function 42:posers/mannequin/is_editing run return fail

execute at @s rotated ~ 0 run function 42:posers/mannequin/edit_equipment_macro with entity @s
execute at @s run rotate @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] ~ 0

scoreboard players operation @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] 42.obj.posers.id = @s 42.obj.posers.id

item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] weapon.mainhand from entity @s weapon.mainhand
item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] weapon.offhand from entity @s weapon.offhand
item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] armor.feet from entity @s armor.feet
item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] armor.legs from entity @s armor.legs
item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] armor.chest from entity @s armor.chest
item replace entity @e[type=armor_stand,tag=42.tag.posers.new_spawn,limit=1] armor.head from entity @s armor.head

tag @e remove 42.tag.posers.new_spawn