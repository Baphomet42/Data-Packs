function 42:portal/tag_id
execute as @e[tag=42.portal,tag=42.portal_id] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ quartz_block
#
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_x=0}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ chain[axis=z]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_x=1}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ chain[axis=x]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_x=2}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ chain[axis=z]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_x=3}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ chain[axis=x]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=-2}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ iron_bars
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=2}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ iron_bars
#
#execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ tripwire
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[facing=south,open=true]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_x=1}] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[facing=west,open=true]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_x=2}] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[facing=north,open=true]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_x=3}] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[facing=east,open=true]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=-2}] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[half=bottom]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=2}] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[half=top]
#
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=-2,42.portal_x=0}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=south,open=true]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=2,42.portal_x=0}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=north,open=true]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=-2,42.portal_x=1}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=west,open=true]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=2,42.portal_x=1}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=east,open=true]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=-2,42.portal_x=2}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=north,open=true]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=2,42.portal_x=2}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=south,open=true]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=-2,42.portal_x=3}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=east,open=true]
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] if entity @e[tag=42.portal_id,tag=42.portal_orange] as @e[tag=42.portal,tag=42.portal_id,scores={42.portal_y=2,42.portal_x=3}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=west,open=true]
#
data merge entity @e[tag=42.portal_id,tag=42.portal_blue,tag=42.portal_dis,limit=1] {block_state:{Name:blue_concrete_powder}}
data merge entity @e[tag=42.portal_id,tag=42.portal_orange,tag=42.portal_dis,limit=1] {block_state:{Name:orange_concrete_powder}}
execute if entity @e[tag=42.portal_id,tag=42.portal_blue] run data merge entity @e[tag=42.portal_id,tag=42.portal_orange,tag=42.portal_dis,limit=1] {block_state:{Name:black_concrete_powder}}
execute if entity @e[tag=42.portal_id,tag=42.portal_orange] run data merge entity @e[tag=42.portal_id,tag=42.portal_blue,tag=42.portal_dis,limit=1] {block_state:{Name:black_concrete_powder}}
#
tag @e remove 42.portal_id