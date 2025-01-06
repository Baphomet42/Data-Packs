data modify storage 42:labs test.temp.page set value [[{text:"",color:"black"}],[]]
data modify storage 42:labs test.temp.page[-1] append from storage 42:labs test.temp.categories[0].category

execute if data storage 42:labs test.temp.categories[0].roles[0] run function 42:labs/test/role_book/book_loop_role
data modify storage 42:labs test.temp.book2 append value [{"text":" "}]

item modify entity @s contents {function:"set_lore",entity:"this",mode:"append",lore:[{storage:"42:labs",nbt:"test.temp.page[][]",interpret:true,separator:""}]}

data remove storage 42:labs test.temp.categories[0]
execute if data storage 42:labs test.temp.categories[0] run function 42:labs/test/role_book/book_loop_category