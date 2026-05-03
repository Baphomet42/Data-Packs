execute if entity @s[tag=42.tag.portal.gel.blue] run data merge entity @e[tag=42.tag.portal.new_spawn,limit=1] {item:{id:"minecraft:blue_concrete"},CustomName:"Repulsion Gel",transformation:{scale:[1.025f,1.025f,1.025f]}}
execute if entity @s[tag=42.tag.portal.gel.blue] run tag @e[tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.gel.has_effect
execute if entity @s[tag=42.tag.portal.gel.blue] run return run tag @e[tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.gel.blue

execute if entity @s[tag=42.tag.portal.gel.orange] run data merge entity @e[tag=42.tag.portal.new_spawn,limit=1] {item:{id:"minecraft:orange_concrete"},CustomName:"Propulsion Gel",transformation:{scale:[1.024f,1.024f,1.024f]}}
execute if entity @s[tag=42.tag.portal.gel.orange] run tag @e[tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.gel.has_effect
execute if entity @s[tag=42.tag.portal.gel.orange] run return run tag @e[tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.gel.orange

execute if entity @s[tag=42.tag.portal.gel.white] run data merge entity @e[tag=42.tag.portal.new_spawn,limit=1] {item:{id:"minecraft:white_concrete"},CustomName:"Conversion Gel",transformation:{scale:[1.023f,1.023f,1.023f]}}
execute if entity @s[tag=42.tag.portal.gel.white] run return run tag @e[tag=42.tag.portal.new_spawn,limit=1] add 42.tag.portal.gel.white