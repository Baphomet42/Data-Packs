execute as @e[tag=42.portal_launcher,distance=..2.5] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[tag=42.portal_launch,distance=..2.5] run function 42:portal/launch/rotate
kill @s[type=area_effect_cloud]