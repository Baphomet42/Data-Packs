tp @e[tag=42.portal_cube_display,tag=42.portal_id,limit=1] ~ ~-.005 ~

execute if entity @s[tag=42.portal_cube_activate] at @s run function 42:portal/cube/try_activate

execute positioned ~ ~.5 ~ if predicate 42:location_fluid run function 42:portal/cube/fizzle
execute if entity @s[tag=42.portal_cube_size1] positioned ~-.75 ~-.25 ~-.75 as @e[tag=42.portal_turret_hit,tag=!42.portal_cube_held,tag=!42.portal_id,dx=0,dy=0,dz=0] positioned ~.5 ~.5 ~.5 if entity @s[dx=0,dy=0,dz=0] at @s run function 42:portal/cube/turret/fall

execute at @s positioned ~ ~.5 ~ run function 42:portal/generic/entity_col/test_1p
execute if entity @e[tag=42.portal_grill_hit,scores={42.portal_col=2}] run function 42:portal/cube/fizzle

execute if entity @s[nbt={OnGround:0b},tag=!42.portal_motion_tp] store result score @s 42.portal_y run data get entity @s Motion[1] 1000

scoreboard players set 42.portal 42.portal_temp 0
function 42:portal/generic/in_world
execute if score 42.portal 42.portal_temp matches 0 run function 42:portal/cube/fizzle