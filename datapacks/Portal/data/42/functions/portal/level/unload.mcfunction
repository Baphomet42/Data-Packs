tag @e remove 42.portal_temp
tag @e remove 42.portal_temp1
tag @s add 42.portal_temp1
execute as @a if score @s 42.portal_lvl = @e[tag=42.portal_temp1,limit=1] 42.portal_lvl run tag @s add 42.portal_temp
tag @s remove 42.portal_temp
execute unless entity @a[tag=42.portal_temp] run scoreboard players operation 42.portal_temp_lvl 42.portal_temp = @s 42.portal_lvl
execute unless entity @a[tag=42.portal_temp] if score 42.portal_temp_lvl 42.portal_temp matches 1.. run function 42:portal/level/reset
scoreboard players set @s 42.portal_lvl 0
tag @e remove 42.portal_temp
tag @s remove 42.portal_temp1
scoreboard players reset @s 42.portal_death
function 42:portal/portal/clear