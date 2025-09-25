tag @s remove 42.tag.posers.temp_toggle
$execute unless data entity @s $(key) run tag @s $(stored) 42.tag.posers.temp_toggle
$execute if data entity @s {$(key):$(value)} run tag @s add 42.tag.posers.temp_toggle
$execute if entity @s[tag=!42.tag.posers.temp_toggle] run data modify entity @s $(key) set value $(value)
$execute if entity @s[tag=42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar ["","$(key): $(value)",{text:" is already set for ",color:"gray"},{selector:"@s"}]
$execute if entity @s[tag=!42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar ["",{text:"Set ",color:"gray"},"$(key): $(value)",{text:" for ",color:"gray"},{selector:"@s"}]
tag @s remove 42.tag.posers.temp_toggle