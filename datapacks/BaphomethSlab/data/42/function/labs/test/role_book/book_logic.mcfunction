data modify storage 42:labs test.temp.book2 set value [['{"text":"\\n"}']]
execute if data storage 42:labs test.temp.categories[0] run function 42:labs/test/role_book/book_loop_category

data modify entity @s Item.components.minecraft:written_book_content.pages set from entity @s Item.components.minecraft:lore
item modify entity @s contents {function:"set_lore",entity:"this",mode:"replace_all",lore:[]}

execute as @e[limit=1,type=item,tag=temp_item2] run function 42:labs/test/role_book/book2_logic