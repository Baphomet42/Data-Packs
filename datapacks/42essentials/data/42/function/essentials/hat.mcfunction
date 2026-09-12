scoreboard players reset @s hat
execute unless items entity @s weapon.mainhand * unless items entity @s armor.head * run return fail

item fill entity @s {type:"group",terms:[{type:"slot_range",source:"this",slots:"weapon.mainhand"},{type:"slot_range",source:"this",slots:"armor.head"}]} from entity @s {type:"group",terms:[{type:"slot_range",source:"this",slots:"armor.head"},{type:"slot_range",source:"this",slots:"weapon.mainhand"}]}
playsound minecraft:item.armor.equip_generic player @s