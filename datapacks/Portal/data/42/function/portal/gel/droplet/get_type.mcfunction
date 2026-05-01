execute if entity @s[tag=42.tag.portal.tool.spawn.gel.blue] run data merge entity @e[tag=42.tag.portal.new_spawn,limit=1] {item:{id:"minecraft:blue_concrete"},CustomName:"Repulsion Gel Droplet"}
execute if entity @s[tag=42.tag.portal.tool.spawn.gel.blue] run return run tag @e[tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.gel.blue

execute if entity @s[tag=42.tag.portal.tool.spawn.gel.orange] run data merge entity @e[tag=42.tag.portal.new_spawn,limit=1] {item:{id:"minecraft:orange_concrete"},CustomName:"Propulsion Gel Droplet"}
execute if entity @s[tag=42.tag.portal.tool.spawn.gel.orange] run return run tag @e[tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.gel.orange

execute if entity @s[tag=42.tag.portal.tool.spawn.gel.white] run data merge entity @e[tag=42.tag.portal.new_spawn,limit=1] {item:{id:"minecraft:white_concrete"},CustomName:"Conversion Gel Droplet"}
execute if entity @s[tag=42.tag.portal.tool.spawn.gel.white] run return run tag @e[tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.gel.white

data merge entity @e[tag=42.tag.portal.new_spawn,limit=1] {item:{id:"minecraft:ice"},CustomName:"Cleansing Gel Droplet"}
tag @e[tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.gel.clear