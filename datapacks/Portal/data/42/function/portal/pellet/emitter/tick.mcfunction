execute if entity @s[tag=42.tag.portal.emitter.on,scores={42.obj.portal.time=1}] run function 42:portal/pellet/emitter/shoot
execute if score @s 42.obj.portal.time matches 1.. run scoreboard players remove @s 42.obj.portal.time 1

execute if entity @s[tag=42.tag.portal.emitter.on] run function 42:portal/tag_id
execute if entity @s[tag=42.tag.portal.emitter.on,scores={42.obj.portal.time=0}] unless entity @e[tag=42.tag.portal.pellet,tag=42.tag.portal.id] run scoreboard players set @s 42.obj.portal.time 60
execute if entity @s[tag=42.tag.portal.emitter.on] unless entity @e[tag=42.tag.portal.pellet.on,tag=42.tag.portal.id] run data merge entity @e[tag=42.tag.portal.pellet.emitter.glass,tag=42.tag.portal.id,limit=1,sort=nearest] {block_state:{Name:blue_stained_glass}}
execute if entity @s[tag=42.tag.portal.emitter.on] if entity @e[tag=42.tag.portal.pellet.on,tag=42.tag.portal.id] run data merge entity @e[tag=42.tag.portal.pellet.emitter.glass,tag=42.tag.portal.id,limit=1,sort=nearest] {block_state:{Name:orange_stained_glass}}
execute if entity @s[tag=42.tag.portal.emitter.on] run tag @e remove 42.tag.portal.id