tag @s add 42.portal_no_gun
execute as @e[tag=42.portal_gun_display] on target run tag @s remove 42.portal_no_gun
execute if entity @s[tag=42.portal_no_gun] run function 42:portal/gun/display/spawn
tag @s remove 42.portal_no_gun