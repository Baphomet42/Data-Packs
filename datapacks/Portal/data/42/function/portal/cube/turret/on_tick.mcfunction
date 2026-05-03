scoreboard players add @s 42.obj.portal.var.u 1
execute if score @s 42.obj.portal.var.u matches 15.. run scoreboard players set @s 42.obj.portal.var.u 0
execute if score @s[tag=!42.tag.portal.turret.nofind] 42.obj.portal.var.u matches 2 unless score @s 42.obj.portal.var.c matches 30.. run function 42:portal/cube/turret/target/find
function 42:portal/tag_id
execute if score @s[tag=42.tag.portal.turret.always_on] 42.obj.portal.var.u matches 2 unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.fire] run function 42:portal/cube/turret/target/new_laser_idle
execute if score @s 42.obj.portal.var.v matches 1.. run scoreboard players remove @s 42.obj.portal.var.v 1
execute if score @s[tag=42.tag.portal.turret.open] 42.obj.portal.var.v matches 1 run function 42:portal/cube/turret/arms/close
function 42:portal/tag_id
execute if entity @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.fire,tag=!42.tag.portal.turret.fire_noshoot] as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.eye] at @s run function 42:portal/cube/turret/target/shoot

execute if entity @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,tag=42.tag.portal.cube.held] if score @s 42.obj.portal.var.v matches ..80 run scoreboard players set @s 42.obj.portal.var.v 80
execute if entity @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,tag=42.tag.portal.cube.held] if entity @s[tag=!42.tag.portal.turret.open] run function 42:portal/cube/turret/arms/open

execute if entity @s[tag=42.tag.portal.cube.gel.blue] unless entity @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,tag=42.tag.portal.cube.held] run function 42:portal/cube/turret/fall