tag @s remove 42.tag.posers.temp_toggle
$execute unless data entity @s $(path).$(key) run tag @s $(stored) 42.tag.posers.temp_toggle
$execute if data entity @s $(path){$(key):$(value)} run tag @s add 42.tag.posers.temp_toggle
$execute if entity @s[tag=!42.tag.posers.temp_toggle] run data modify entity @s $(path).$(key) set value $(value)
$execute if entity @s[tag=42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar [{text:"",color:"yellow"},"$(key): $(value)",{text:" is already set for ",color:"gold"},{selector:"@s"}]
$execute if entity @s[tag=!42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar [{text:"",color:"yellow"},{text:"Set ",color:"gold"},"$(key): $(value)",{text:" for ",color:"gold"},{selector:"@s"}]
tag @s remove 42.tag.posers.temp_toggle