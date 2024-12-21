tag @e remove 42.tag.portal.temp1
tag @e remove 42.tag.portal.temp2
tag @e remove 42.tag.portal.temp
tag @s add 42.tag.portal.temp
execute unless entity @s[type=marker] run scoreboard players set #42.var.portal.dummy 42.obj.portal.temp -3
execute if entity @s[type=marker] run scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.id
execute if entity @s[tag=42.tag.portal.gun.a] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.a] at @s if score @s 42.obj.portal.id = #42.var.portal.dummy 42.obj.portal.temp run tag @s add 42.tag.portal.temp1
execute if entity @s[tag=42.tag.portal.gun.b] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.b] at @s if score @s 42.obj.portal.id = #42.var.portal.dummy 42.obj.portal.temp run tag @s add 42.tag.portal.temp1
execute if entity @s[tag=42.tag.portal.gun.a] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.a] at @s if score @s 42.obj.portal.link = @e[tag=42.tag.portal.temp,limit=1] 42.obj.portal.link run tag @s add 42.tag.portal.temp2
execute if entity @s[tag=42.tag.portal.gun.b] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.b] at @s if score @s 42.obj.portal.link = @e[tag=42.tag.portal.temp,limit=1] 42.obj.portal.link run tag @s add 42.tag.portal.temp2
execute as @e[tag=42.tag.portal.portal,tag=42.tag.portal.temp1,tag=42.tag.portal.temp2] at @s run function 42:portal/portal/fizzle
tag @e remove 42.tag.portal.temp1
tag @e remove 42.tag.portal.temp2
tag @e remove 42.tag.portal.temp

playsound item.chorus_fruit.teleport block @a ~ ~ ~ 3 1.5
execute unless entity @s[type=marker] run scoreboard players set #42.var.portal.dummy 42.obj.portal.temp -3
execute if entity @s[type=marker] run scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.id
summon block_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.portal","42.tag.portal.tags.has_tick","42.tag.portal.temp","42.tag.portal.portal.group"],brightness:{block:15,sky:15},CustomNameVisible:0b,CustomName:'"Portal"',block_state:{Name:air},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.8f,-.9f,0f],scale:[1.6f,2.3f,.55f]},Passengers:[\
    {id:block_display,Tags:["42.tag.summon","42.tag.portal.temp","42.tag.portal.portal.group","42.tag.portal.portal.dis","42.tag.portal.portal.close"],brightness:{block:15,sky:15},CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:air},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.75f,-.85f,0f],scale:[1.5f,2.2f,.525f]}},\
    {id:block_display,Tags:["42.tag.summon","42.tag.portal.temp","42.tag.portal.portal.group","42.tag.portal.portal.open"],brightness:{block:15,sky:15},CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:coal_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.75f,-.85f,0f],scale:[1.5f,2.2f,.525f]}},\
    {id:block_display,Tags:["42.tag.summon","42.tag.portal.temp","42.tag.portal.portal.group"],brightness:{block:15,sky:15},CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:coal_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.4f,-.9f,-.4f],scale:[2.8f,2.8f,.8f]}}]}
scoreboard players operation @e[tag=42.tag.portal.temp] 42.obj.portal.id = #42.var.portal.dummy 42.obj.portal.temp
scoreboard players operation @e[tag=42.tag.portal.temp] 42.obj.portal.link = @s 42.obj.portal.link
execute if score @s 42.obj.portal.lvl matches 1.. run scoreboard players operation @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.lvl = @s 42.obj.portal.lvl
execute unless score @s 42.obj.portal.lvl matches 1.. run scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.lvl -2
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.var.x 0
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.var.y 0
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.cool 0
execute if entity @s[tag=42.tag.portal.gun.a] run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.portal.a
execute if entity @s[tag=42.tag.portal.gun.b] run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.portal.b
execute if entity @s[tag=42.tag.portal.gun.no_sel] run tag @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] add 42.tag.portal.portal.no_sel
scoreboard players operation @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.skin = @s 42.obj.portal.skin
scoreboard players operation @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal.dis] 42.obj.portal.skin = @s 42.obj.portal.skin

execute if entity @s[tag=42.tag.portal.w] run scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.var.x 1
execute if entity @s[tag=42.tag.portal.w] as @e[tag=42.tag.portal.temp] at @s run rotate @s 90 ~
execute if entity @s[tag=42.tag.portal.n] run scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.var.x 2
execute if entity @s[tag=42.tag.portal.n] as @e[tag=42.tag.portal.temp] at @s run rotate @s 180 ~
execute if entity @s[tag=42.tag.portal.e] run scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.var.x 3
execute if entity @s[tag=42.tag.portal.e] as @e[tag=42.tag.portal.temp] at @s run rotate @s -90 ~
execute if entity @s[tag=42.tag.portal.floor] run function 42:portal/portal/setup_floor
execute if entity @s[tag=42.tag.portal.ceiling] run function 42:portal/portal/setup_ceiling
execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] at @s run function 42:portal/portal/calc_rot
execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] at @s run function 42:portal/portal/setup_dis

execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] run function 42:portal/portal/set_name
execute if entity @s[tag=42.tag.portal.gun.a] run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.portal.a
execute if entity @s[tag=42.tag.portal.gun.b] run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.portal.b
execute as @e[tag=42.tag.portal.portal,tag=42.tag.portal.temp] run function 42:portal/portal/set_color_dis
execute as @e[tag=42.tag.portal.portal.dis,tag=42.tag.portal.temp] run function 42:portal/portal/set_back_color_dis

execute as @e[tag=42.tag.portal.portal,tag=42.tag.portal.temp] at @s run function 42:portal/portal/set_blocks
tag @e remove 42.tag.portal.temp