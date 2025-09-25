tag @s remove 42.tag.posers.temp_toggle
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{"minecraft:resistance":{amplifier:255,duration:-1,visible:false,ambient:false}}}} run tag @s add 42.tag.posers.temp_toggle
effect clear @s resistance
execute if entity @s[tag=!42.tag.posers.temp_toggle] run effect give @s resistance infinite 255 true
execute if entity @s[tag=42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar ["",{text:"Removed ",color:"gray"},"Max Resistance",{text:" from ",color:"gray"},{selector:"@s"}]
execute if entity @s[tag=!42.tag.posers.temp_toggle] run title @a[tag=42.tag.posers.this_trigger_player] actionbar ["",{text:"Added ",color:"gray"},"Max Resistance",{text:" to ",color:"gray"},{selector:"@s"}]
tag @s remove 42.tag.posers.temp_toggle