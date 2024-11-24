tag @s add 42.tag.portal.no_gun
execute as @e[tag=42.tag.portal.gun_display] on target run tag @s remove 42.tag.portal.no_gun
execute if entity @s[tag=42.tag.portal.no_gun] run function 42:portal/gun/display/spawn
tag @s remove 42.tag.portal.no_gun