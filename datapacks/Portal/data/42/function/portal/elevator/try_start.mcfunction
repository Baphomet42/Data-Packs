execute positioned ^-1 ^ ^1 align xyz positioned ~ ~.5 ~ run tag @a[tag=42.tag.portal.temp,dx=0,dy=2,dz=0] remove 42.tag.portal.temp
execute positioned ^ ^ ^1 align xyz positioned ~ ~.5 ~ run tag @a[tag=42.tag.portal.temp,dx=0,dy=2,dz=0] remove 42.tag.portal.temp
execute positioned ^1 ^ ^1 align xyz positioned ~ ~.5 ~ run tag @a[tag=42.tag.portal.temp,dx=0,dy=2,dz=0] remove 42.tag.portal.temp
execute if entity @a[tag=42.tag.portal.temp] as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator] at @s run function 42:portal/elevator/start