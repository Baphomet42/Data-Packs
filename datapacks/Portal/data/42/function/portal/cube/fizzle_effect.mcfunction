scoreboard players add @s 42.obj.portal.time 1
execute if entity @s[scores={42.obj.portal.time=2}] run tp @s ~ ~.75 ~
execute if entity @s[tag=42.tag.portal.cube.dis.main] run particle minecraft:scrape ~ ~.5 ~ .5 .5 .5 3 1
kill @s[type=!player,scores={42.obj.portal.time=30..}]