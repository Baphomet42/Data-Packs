function 42:portal/portal/tag_pair
scoreboard players add @s 42.portal_skin 1
execute if score @s 42.portal_skin matches 16.. run scoreboard players set @s 42.portal_skin 0
execute if entity @s[tag=42.portal_a] run scoreboard players add @e[tag=42.portal_a,tag=42.portal_pair,tag=42.portal_dis] 42.portal_skin 1
execute if entity @s[tag=42.portal_a] run execute as @e[tag=42.portal_a,tag=42.portal_pair,tag=42.portal_dis] if score @s 42.portal_skin matches 16.. run scoreboard players set @s 42.portal_skin 0
execute if entity @s[tag=42.portal_a] unless entity @e[tag=42.portal_b,tag=42.portal_pair] run execute as @e[tag=42.portal_a,tag=42.portal_pair,tag=42.portal_dis] run function 42:portal/portal/set_back_color_dis
execute if entity @s[tag=42.portal_b] run scoreboard players add @e[tag=42.portal_b,tag=42.portal_pair,tag=42.portal_dis] 42.portal_skin 1
execute if entity @s[tag=42.portal_b] run execute as @e[tag=42.portal_b,tag=42.portal_pair,tag=42.portal_dis] if score @s 42.portal_skin matches 16.. run scoreboard players set @s 42.portal_skin 0
execute if entity @s[tag=42.portal_b] unless entity @e[tag=42.portal_a,tag=42.portal_pair] run execute as @e[tag=42.portal_b,tag=42.portal_pair,tag=42.portal_dis] run function 42:portal/portal/set_back_color_dis
function 42:portal/portal/set_color_dis
function 42:portal/portal/set_name
tag @e remove 42.portal_pair