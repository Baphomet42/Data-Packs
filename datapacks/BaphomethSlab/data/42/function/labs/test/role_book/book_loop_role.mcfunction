data modify storage 42:labs test.temp.page append value ['"\\n"']
data modify storage 42:labs test.temp.page append value [[{hoverEvent:{action:"show_text",contents:""},text:"Role "},{text:""}]]
data modify storage 42:labs test.temp.book2 append value [[{hoverEvent:{action:"show_text",contents:[{text:"Role "},{text:""}]},text:"["},{text:""},{text:"]"}]]
data modify storage 42:labs test.temp.page[-1][-1][1].text set from storage 42:labs test.temp.categories[0].roles[0].id
data modify storage 42:labs test.temp.page[-1][-1][0].hoverEvent.contents set from storage 42:labs test.temp.categories[0].roles[0].description
data modify storage 42:labs test.temp.book2[-1][-1][0].hoverEvent.contents[1].text set from storage 42:labs test.temp.categories[0].roles[0].id

function 42:labs/test/role_book/parse_id with storage 42:labs test.temp.categories[0].roles[0]
scoreboard players add #temp 42.obj.labs.vars 1000
execute store result storage 42:labs test.temp.num int 1 run scoreboard players get #temp 42.obj.labs.vars
function 42:labs/test/role_book/set_click_event with storage 42:labs test.temp

data remove storage 42:labs test.temp.categories[0].roles[0]
execute if data storage 42:labs test.temp.categories[0].roles[0] run function 42:labs/test/role_book/book_loop_role