item modify entity @s contents {function:"set_lore",entity:"this",mode:"append",lore:[[{text:"Player 1",color:"blue"},{storage:"42:labs",nbt:"test.temp.book2[][]",interpret:true,separator:""}]]}

data modify entity @s Item.components.minecraft:written_book_content.pages set from entity @s Item.components.minecraft:lore
item modify entity @s contents {function:"set_lore",entity:"this",mode:"replace_all",lore:[]}