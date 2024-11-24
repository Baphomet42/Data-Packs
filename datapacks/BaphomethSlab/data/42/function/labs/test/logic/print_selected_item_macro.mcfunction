summon item_display ~ ~ ~ {Tags:["42.tag.labs.temp_print_sel_item_macro"],view_range:0f,item:{id:"stone"}}
$item modify entity @e[limit=1,tag=42.tag.labs.temp_print_sel_item_macro] contents {function:"set_name",entity:"this",target:"item_name",name:{text:"[Hover Here]",hoverEvent:{action:"show_item",contents:$(SelectedItem)}}}
tellraw @a {"entity":"@e[limit=1,tag=42.tag.labs.temp_print_sel_item_macro]","nbt":"item.components.minecraft:item_name","interpret":true}
kill @e[tag=42.tag.labs.temp_print_sel_item_macro]