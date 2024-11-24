# place specified nbt at `42:labs temp.nbt`

tag @e remove 42.tag.labs.temp
summon item_display ~ ~ ~ {item:{id:"sponge"},view_range:0f,Tags:["42.tag.labs.temp"]}
item modify entity @e[limit=1,tag=42.tag.labs.temp] contents {function:"set_name",entity:"this",target:"custom_name",name:[{nbt:"temp.nbt",storage:"42:labs"}]}
data modify storage 42:labs temp.macro.nbt set from entity @e[limit=1,tag=42.tag.labs.temp] item.components.minecraft:custom_name
function 42:labs/test/logic/print_copy_nbt_macro with storage 42:labs temp.macro
kill @e[tag=42.tag.labs.temp]