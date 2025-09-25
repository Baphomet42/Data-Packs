tag @s remove 42.tag.posers.temp_toggle
$execute if data entity @s $(path) run tag @s add 42.tag.posers.temp_toggle
$data remove entity @s $(path)
$execute if entity @s[tag=42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar ["",{text:"Removed ",color:"gray"},"$(path)",{text:" from ",color:"gray"},{selector:"@s"}]
$execute if entity @s[tag=!42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar ["","$(path)",{text:" unchanged for ",color:"gray"},{selector:"@s"}]
tag @s remove 42.tag.posers.temp_toggle