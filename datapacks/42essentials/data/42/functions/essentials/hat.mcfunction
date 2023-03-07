scoreboard players set @s 42.hat2 0
execute as @s[nbt={Inventory:[{Slot:103b}]}] run scoreboard players add @s 42.hat2 1
execute as @s[nbt=!{SelectedItem:{}}] run scoreboard players add @s 42.hat2 2
#
title @s[scores={42.hat2=1}] actionbar "Head slot full!"
title @s[scores={42.hat2=2}] actionbar "No item selected!"
#
execute if score @s 42.hat2 matches 0 run item replace entity @s armor.head from entity @s weapon.mainhand
execute if score @s 42.hat2 matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s 42.hat2 matches 0 at @s run playsound minecraft:item.armor.equip_generic player @s
execute if score @s 42.hat2 matches 3 run item replace entity @s weapon.mainhand from entity @s armor.head
execute if score @s 42.hat2 matches 3 run item replace entity @s armor.head with air
execute if score @s 42.hat2 matches 3 at @s run playsound minecraft:item.armor.equip_generic player @s
scoreboard players set @s hat 0