function 42:portal/tag_id
execute if score @s 42.obj.portal.time matches 10 run playsound minecraft:block.lever.click block @a ~ ~ ~ 1 .3
execute if score @s 42.obj.portal.time matches 10 run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.pedestal.dis,limit=1] {transformation:{translation:[-.15f,1.05f,-.15f]},interpolation_duration:10,start_interpolation:-1}
execute if score @s 42.obj.portal.time matches 10 run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.pedestal.hit,limit=1] {response:true}
execute if score @s 42.obj.portal.time matches 1 run function 42:portal/unpower
execute if score @s 42.obj.portal.time matches 1.. run scoreboard players remove @s 42.obj.portal.time 1
execute if score @s 42.obj.portal.time matches 1.. run data remove entity @e[tag=42.tag.portal.id,tag=42.tag.portal.pedestal.hit,limit=1] interaction
execute if score @s 42.obj.portal.time matches 0 as @e[tag=42.tag.portal.pedestal.hit,tag=42.tag.portal.id,limit=1,sort=nearest] at @s if function 42:portal/cube/interact_test as @e[tag=42.tag.portal.id,tag=42.tag.portal.pedestal,limit=1] run function 42:portal/button/interact_pedestal
tag @e remove 42.tag.portal.id