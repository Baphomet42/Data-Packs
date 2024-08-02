execute if entity @s[tag=42.portal_emitter_on,scores={42.portal_time=1}] run function 42:portal/pellet/emitter/shoot
execute if score @s 42.portal_time matches 1.. run scoreboard players remove @s 42.portal_time 1

execute if entity @s[tag=42.portal_emitter_on] run function 42:portal/tag_id
execute if entity @s[tag=42.portal_emitter_on,scores={42.portal_time=0}] unless entity @e[tag=42.portal_pellet,tag=42.portal_id] run scoreboard players set @s 42.portal_time 60
execute if entity @s[tag=42.portal_emitter_on] unless entity @e[tag=42.portal_pellet_on,tag=42.portal_id] run data merge entity @e[tag=42.portal_pellet_emitter_glass,tag=42.portal_id,limit=1,sort=nearest] {block_state:{Name:orange_stained_glass}}
execute if entity @s[tag=42.portal_emitter_on] if entity @e[tag=42.portal_pellet_on,tag=42.portal_id] run data merge entity @e[tag=42.portal_pellet_emitter_glass,tag=42.portal_id,limit=1,sort=nearest] {block_state:{Name:blue_stained_glass}}
execute if entity @s[tag=42.portal_emitter_on] run tag @e remove 42.portal_id