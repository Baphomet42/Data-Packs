tp @s ~ ~ ~ 0 0
execute at @s run function 42:portal/gun/valid_blocks
execute if score @s 42.portal_col matches 18 run tag @s add 42.portal_s
tp @s ~ ~ ~ 90 0
execute at @s unless entity @s[tag=42.portal_s] run function 42:portal/gun/valid_blocks
execute unless entity @s[tag=42.portal_s] if score @s 42.portal_col matches 18 run tag @s add 42.portal_w
tp @s ~ ~ ~ 180 0
execute at @s unless entity @s[tag=42.portal_s] unless entity @s[tag=42.portal_w] run function 42:portal/gun/valid_blocks
execute unless entity @s[tag=42.portal_s] unless entity @s[tag=42.portal_w] if score @s 42.portal_col matches 18 run tag @s add 42.portal_n
tp @s ~ ~ ~ -90 0
execute at @s unless entity @s[tag=42.portal_s] unless entity @s[tag=42.portal_w] unless entity @s[tag=42.portal_n] run function 42:portal/gun/valid_blocks
execute unless entity @s[tag=42.portal_s] unless entity @s[tag=42.portal_w] unless entity @s[tag=42.portal_n] if score @s 42.portal_col matches 18 run tag @s add 42.portal_e
tp @s ~ ~ ~ 0 -90
execute at @s unless entity @s[tag=42.portal_s] unless entity @s[tag=42.portal_w] unless entity @s[tag=42.portal_n] unless entity @s[tag=42.portal_e] run function 42:portal/gun/valid_blocks
execute unless entity @s[tag=42.portal_s] unless entity @s[tag=42.portal_w] unless entity @s[tag=42.portal_n] unless entity @s[tag=42.portal_e] if score @s 42.portal_col matches 18 run tag @s add 42.portal_floor
tp @s ~ ~ ~ 0 90
execute at @s unless entity @s[tag=42.portal_s] unless entity @s[tag=42.portal_w] unless entity @s[tag=42.portal_n] unless entity @s[tag=42.portal_e] unless entity @s[tag=42.portal_floor] run function 42:portal/gun/valid_blocks
execute unless entity @s[tag=42.portal_s] unless entity @s[tag=42.portal_w] unless entity @s[tag=42.portal_n] unless entity @s[tag=42.portal_e] unless entity @s[tag=42.portal_floor] if score @s 42.portal_col matches 18 run tag @s add 42.portal_ceiling
#
execute unless entity @s[tag=!42.portal_s,tag=!42.portal_w,tag=!42.portal_n,tag=!42.portal_e,tag=!42.portal_floor,tag=!42.portal_ceiling] at @s align xyz positioned ~.5 ~ ~.5 run function 42:portal/portal/spawn
kill @s[type=marker]