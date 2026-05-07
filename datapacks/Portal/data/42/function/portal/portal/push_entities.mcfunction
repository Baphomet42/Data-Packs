tag @e remove 42.tag.portal.temp
tag @e remove 42.tag.portal.temp1
tag @s add 42.tag.portal.temp1
execute positioned ^-1 ^-.5 ^ align xyz run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.temp
execute positioned ^ ^-.5 ^ align xyz run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.temp
execute positioned ^1 ^-.5 ^ align xyz run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.temp
execute positioned ^-1 ^.5 ^ align xyz run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.temp
execute positioned ^ ^.5 ^ align xyz run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.temp
execute positioned ^1 ^.5 ^ align xyz run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.temp
execute positioned ^-1 ^1.5 ^ align xyz run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.temp
execute positioned ^ ^1.5 ^ align xyz run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.temp
execute positioned ^1 ^1.5 ^ align xyz run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.temp

execute as @a[tag=42.tag.portal.temp,gamemode=!spectator] at @s rotated as @e[tag=42.tag.portal.temp1,limit=1] run tp @s ^ ^ ^.3
execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.cube.main] at @s rotated as @e[tag=42.tag.portal.temp1,limit=1] run tp @s ^ ^ ^.55

tag @s remove 42.tag.portal.temp1