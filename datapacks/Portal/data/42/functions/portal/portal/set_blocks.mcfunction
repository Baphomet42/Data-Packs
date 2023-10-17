function 42:portal/portal/tag_pair
execute as @e[tag=42.portal_wall,tag=42.portal_pair] at @s run function 42:portal/portal/replace_wall
#
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_x=0}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ chain[axis=z]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_x=1}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ chain[axis=x]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_x=2}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ chain[axis=z]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_x=3}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ chain[axis=x]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ white_stained_glass_pane
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2}] at @s positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ white_stained_glass_pane
#
#execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ tripwire
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[facing=south,open=true]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_x=1}] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[facing=west,open=true]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_x=2}] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[facing=north,open=true]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_x=3}] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[facing=east,open=true]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2}] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[half=bottom]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2}] at @s positioned ^ ^.5 ^ run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[half=top]
#
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2,42.portal_x=0}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=south,open=true]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2,42.portal_x=0}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=north,open=true]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2,42.portal_x=1}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=west,open=true]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2,42.portal_x=1}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=east,open=true]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2,42.portal_x=2}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=north,open=true]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2,42.portal_x=2}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=south,open=true]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=-2,42.portal_x=3}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=east,open=true]
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_pair,scores={42.portal_y=2,42.portal_x=3}] at @s positioned ^ ^.5 ^ run setblock ^ ^1 ^ iron_trapdoor[half=top,facing=west,open=true]
#
execute as @e[tag=42.portal_pair,tag=42.portal_dis] run function 42:portal/portal/set_back_color_dis
execute as @e[tag=42.portal_pair,tag=42.portal_wall] run data merge entity @s {block_state:{Name:air}}
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] run data merge entity @e[tag=42.portal_pair,tag=42.portal_b,tag=42.portal_dis,limit=1] {block_state:{Name:black_concrete_powder}}
execute if entity @e[tag=42.portal_pair,tag=42.portal_b] run data merge entity @e[tag=42.portal_pair,tag=42.portal_a,tag=42.portal_dis,limit=1] {block_state:{Name:black_concrete_powder}}
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] as @e[tag=42.portal_pair,tag=42.portal_wall] run function 42:portal/portal/set_dis
#
tag @e remove 42.portal_pair