# place specified nbt at `42:labs temp.nbt`

tag @e remove 42.labs_temp
summon item_display ~ ~ ~ {item:{id:"sponge"},view_range:0f,Tags:["42.labs_temp"]}
item modify entity @e[tag=42.labs_temp,limit=1] contents {function:"set_name",entity:"this",target:"custom_name",name:[{nbt:"temp.nbt",storage:"42:labs"}]}
data modify storage 42:labs temp.macro.nbt set from entity @e[tag=42.labs_temp,limit=1] item.components.minecraft:custom_name
function 42:labs/test/logic/print_copy_nbt_macro with storage 42:labs temp.macro
kill @e[tag=42.labs_temp]