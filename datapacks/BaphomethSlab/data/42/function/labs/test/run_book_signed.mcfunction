# seems to work for commands without any single/double quotes

data remove storage 42:labs data.temp
data modify storage 42:labs data.temp.raw set string entity @s SelectedItem.components.minecraft:written_book_content.pages[0].raw 1 -1
function 42:labs/test/logic/run_raw with storage 42:labs data.temp
#data remove storage 42:labs data.temp