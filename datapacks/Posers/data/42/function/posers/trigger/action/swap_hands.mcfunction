execute at @s run summon item_display ~ ~ ~ {data:{42data:{42datapack:{}}},view_range:0f,UUID:[I;-794769656,-1718729115,-1544516560,-610719876]}
item replace entity d0a0c708-998e-4665-a3f0-8c30db99277c contents from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity d0a0c708-998e-4665-a3f0-8c30db99277c contents
kill d0a0c708-998e-4665-a3f0-8c30db99277c