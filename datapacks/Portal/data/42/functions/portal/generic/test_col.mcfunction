tag @s remove 42.portal_test_col_temp
execute if block ~ ~ ~ #42:projectile_pass run tag @s add 42.portal_test_col_temp
execute unless entity @s[tag=42.portal_test_col_temp] if entity @s[tag=42.portal_bullet_pass] if block ~ ~ ~ #42:portal_bullet_pass run tag @s add 42.portal_test_col_temp
scoreboard players add @s[tag=42.portal_test_col_temp] 42.portal_col 1
execute unless entity @s[tag=42.portal_test_col_temp] run function 42:portal/generic/test_col/shape
tag @s remove 42.portal_test_col_temp