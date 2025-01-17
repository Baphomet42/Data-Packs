data modify storage 42:labs test.temp.categories set from storage 42:labs test.role_data
data remove storage 42:labs test.temp.categories[].roles[{disabled:{}}]

summon item ~ ~ ~ {Item:{id:"written_book",components:{"minecraft:written_book_content":{author:"",title:""}}},Tags:["temp_item1"]}
summon item ~ ~ ~ {Item:{id:"written_book",components:{"minecraft:written_book_content":{author:"",title:""}}},Tags:["temp_item2"]}
execute as @e[limit=1,type=item,tag=temp_item1] run function 42:labs/test/role_book/book_logic
tag @e[limit=1,type=item,tag=temp_item1] remove temp_item1
tag @e[limit=1,type=item,tag=temp_item2] remove temp_item2

data remove storage 42:labs test.temp