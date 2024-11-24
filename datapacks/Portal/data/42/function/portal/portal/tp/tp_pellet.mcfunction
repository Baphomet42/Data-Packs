execute at @e[tag=42.tag.portal.portal.tp2] rotated as @e[tag=42.tag.portal.portal.tp2] positioned ^ ^.5 ^.5 run tp @s ~ ~ ~ ~ ~
execute at @s align xyz positioned ~.5 ~.5 ~.5 rotated as @s run tp @s ~ ~ ~ ~ ~
execute if score @s 42.obj.portal.time matches 0..120 run scoreboard players add @s 42.obj.portal.time 120