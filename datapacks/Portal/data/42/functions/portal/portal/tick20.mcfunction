scoreboard players set 42.portal 42.portal_temp 0
execute if entity @s[tag=42.portal_a] as @e[tag=42.portal,tag=42.portal_a,tag=42.portal_pair] run scoreboard players add 42.portal 42.portal_temp 1
execute if entity @s[tag=42.portal_b] as @e[tag=42.portal,tag=42.portal_b,tag=42.portal_pair] run scoreboard players add 42.portal 42.portal_temp 1
execute if entity @s[tag=42.portal_a] if score 42.portal 42.portal_temp matches 2.. as @e[tag=42.portal,tag=42.portal_a,tag=42.portal_pair] run function 42:portal/portal/fizzle
execute if entity @s[tag=42.portal_b] if score 42.portal 42.portal_temp matches 2.. as @e[tag=42.portal,tag=42.portal_b,tag=42.portal_pair] run function 42:portal/portal/fizzle
execute if entity @a[distance=..5] run playsound minecraft:block.portal.ambient block @a[distance=..5] ^ ^.5 ^ .5 1