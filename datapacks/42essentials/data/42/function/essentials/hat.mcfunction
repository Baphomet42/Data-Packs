scoreboard players reset @s hat
execute unless items entity @s weapon.mainhand * unless items entity @s armor.head * run return fail

tag @e remove 42.tag.gen.temp
summon item_display ~ ~ ~ {Tags:["42.tag.gen.temp"],view_range:0f}

item replace entity @e[limit=1,type=item_display,tag=42.tag.gen.temp] contents from entity @s armor.head
item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[limit=1,type=item_display,tag=42.tag.gen.temp] contents

kill @e[limit=1,type=item_display,tag=42.tag.gen.temp]
playsound minecraft:item.armor.equip_generic player @s