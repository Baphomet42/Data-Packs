execute positioned ^-1 ^ ^1 align xyz positioned ~ ~.5 ~ run tag @a[tag=42.portal_temp,dx=0,dy=2,dz=0] remove 42.portal_temp
execute positioned ^ ^ ^1 align xyz positioned ~ ~.5 ~ run tag @a[tag=42.portal_temp,dx=0,dy=2,dz=0] remove 42.portal_temp
execute positioned ^1 ^ ^1 align xyz positioned ~ ~.5 ~ run tag @a[tag=42.portal_temp,dx=0,dy=2,dz=0] remove 42.portal_temp
execute if entity @a[tag=42.portal_temp] as @e[tag=42.portal_id,tag=42.portal_elevator] at @s run function 42:portal/elevator/start