tag @s remove 42.tag.posers.temp_toggle
$execute if entity @s[tag=$(tag)] run tag @s add 42.tag.posers.temp_toggle
$tag @s remove $(tag)
$execute if entity @s[tag=!42.tag.posers.temp_toggle] run tag @s add $(tag)
$execute if entity @s[tag=!42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar [{text:"",color:"yellow"},{text:"Added ",color:"gold"},{text:"$(display)",hover_event:{action:"show_text",value:"$(tag)"}},{text:" to ",color:"gold"},{selector:"@s"}]
$execute if entity @s[tag=42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar [{text:"",color:"yellow"},{text:"Removed ",color:"gold"},{text:"$(display)",hover_event:{action:"show_text",value:"$(tag)"}},{text:" from ",color:"gold"},{selector:"@s"}]
tag @s remove 42.tag.posers.temp_toggle