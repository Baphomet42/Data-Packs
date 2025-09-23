tag @s remove 42.tag.posers.temp_toggle
$execute if data entity @s {$(key):$(stored)} run tag @s add 42.tag.posers.temp_toggle
$execute if entity @s[tag=42.tag.posers.temp_toggle] run data modify entity @s $(key) set value $(default)
$execute if entity @s[tag=!42.tag.posers.temp_toggle] run data modify entity @s $(key) set value $(stored)
$execute if entity @s[tag=42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar ["",{text:"Set ",color:"gray"},"$(key): $(default)",{text:" for ",color:"gray"},{selector:"@s"}]
$execute if entity @s[tag=!42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar ["",{text:"Set ",color:"gray"},"$(key): $(stored)",{text:" for ",color:"gray"},{selector:"@s"}]
tag @s remove 42.tag.posers.temp_toggle