tag @s remove 42.tag.portal.test.col_temp
execute if block ~ ~ ~ #42:projectile_pass run tag @s add 42.tag.portal.test.col_temp
execute unless entity @s[tag=42.tag.portal.test.col_temp] if entity @s[tag=42.tag.portal.bullet_pass] if block ~ ~ ~ #42:portal/portal_bullet_pass run tag @s add 42.tag.portal.test.col_temp
scoreboard players add @s[tag=42.tag.portal.test.col_temp] 42.obj.portal.col 1
execute unless entity @s[tag=42.tag.portal.test.col_temp] run function 42:portal/generic/test_col/shape
tag @s remove 42.tag.portal.test.col_temp