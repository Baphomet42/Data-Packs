scoreboard players reset @s hat
execute unless items entity @s weapon.mainhand * unless items entity @s armor.head * run return fail

tag @e remove 42.temp
summon item_display ~ ~ ~ {Tags:["42.temp"],view_range:0f}

item replace entity @e[type=item_display,tag=42.temp,limit=1] contents from entity @s armor.head
item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[type=item_display,tag=42.temp,limit=1] contents

kill @e[type=item_display,tag=42.temp,limit=1]
playsound minecraft:item.armor.equip_generic player @s