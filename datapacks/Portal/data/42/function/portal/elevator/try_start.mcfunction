execute positioned ^-1 ^ ^1.25 positioned ~-.5 ~ ~-.5 run tag @a[tag=42.tag.portal.temp.in_elevator,dx=0,dy=2,dz=0] remove 42.tag.portal.temp.in_elevator
execute positioned ^ ^ ^1.25 positioned ~-.5 ~ ~-.5 run tag @a[tag=42.tag.portal.temp.in_elevator,dx=0,dy=2,dz=0] remove 42.tag.portal.temp.in_elevator
execute positioned ^1 ^ ^1.25 positioned ~-.5 ~ ~-.5 run tag @a[tag=42.tag.portal.temp.in_elevator,dx=0,dy=2,dz=0] remove 42.tag.portal.temp.in_elevator
execute unless entity @a[tag=42.tag.portal.temp.in_elevator] run return fail
function 42:portal/elevator/start