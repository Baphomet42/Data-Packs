tag @e remove 42.portal_temp1
tag @e remove 42.portal_temp2
tag @e remove 42.portal_temp
tag @s add 42.portal_temp
execute unless entity @s[type=marker] run scoreboard players set 42.portal 42.portal_temp -3
execute if entity @s[type=marker] run scoreboard players operation 42.portal 42.portal_temp = @s 42.portal_id
execute if entity @s[tag=42.portal_gun_a] as @e[tag=42.portal,tag=42.portal_a] at @s if score @s 42.portal_id = 42.portal 42.portal_temp run tag @s add 42.portal_temp1
execute if entity @s[tag=42.portal_gun_b] as @e[tag=42.portal,tag=42.portal_b] at @s if score @s 42.portal_id = 42.portal 42.portal_temp run tag @s add 42.portal_temp1
execute if entity @s[tag=42.portal_gun_a] as @e[tag=42.portal,tag=42.portal_a] at @s if score @s 42.portal_link = @e[tag=42.portal_temp,limit=1] 42.portal_link run tag @s add 42.portal_temp2
execute if entity @s[tag=42.portal_gun_b] as @e[tag=42.portal,tag=42.portal_b] at @s if score @s 42.portal_link = @e[tag=42.portal_temp,limit=1] 42.portal_link run tag @s add 42.portal_temp2
execute as @e[tag=42.portal,tag=42.portal_temp1,tag=42.portal_temp2] at @s run function 42:portal/portal/fizzle
tag @e remove 42.portal_temp1
tag @e remove 42.portal_temp2
tag @e remove 42.portal_temp

playsound item.chorus_fruit.teleport block @a ~ ~ ~ 3 1.5
execute unless entity @s[type=marker] run scoreboard players set 42.portal 42.portal_temp -3
execute if entity @s[type=marker] run scoreboard players operation 42.portal 42.portal_temp = @s 42.portal_id
summon block_display ~ ~ ~ {Tags:["42.portal","42.portal_temp","42.portal_group","42.portal_player"],brightness:{block:15,sky:15},CustomNameVisible:0b,CustomName:'{"text":"Portal"}',block_state:{Name:air},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.8f,-.9f,0f],scale:[1.6f,2.3f,.55f]},Passengers:[\
    {id:block_display,Tags:["42.portal_temp","42.portal_group","42.portal_dis","42.portal_close"],brightness:{block:15,sky:15},CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:air},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.75f,-.85f,0f],scale:[1.5f,2.2f,.525f]}},\
    {id:block_display,Tags:["42.portal_temp","42.portal_group","42.portal_open"],brightness:{block:15,sky:15},CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:coal_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.75f,-.85f,0f],scale:[1.5f,2.2f,.525f]}},\
    {id:block_display,Tags:["42.portal_temp","42.portal_group"],brightness:{block:15,sky:15},CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:coal_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.4f,-.9f,-.4f],scale:[2.8f,2.8f,.8f]}}]}
scoreboard players set @e[type=!player,tag=42.portal_temp] 42.datapack 3
scoreboard players operation @e[tag=42.portal_temp] 42.portal_id = 42.portal 42.portal_temp
scoreboard players operation @e[tag=42.portal_temp] 42.portal_link = @s 42.portal_link
execute if score @s 42.portal_lvl matches 1.. run scoreboard players operation @e[tag=42.portal_temp,tag=42.portal] 42.portal_lvl = @s 42.portal_lvl
execute unless score @s 42.portal_lvl matches 1.. run scoreboard players set @e[tag=42.portal_temp,tag=42.portal] 42.portal_lvl -2
scoreboard players set @e[tag=42.portal_temp,tag=42.portal] 42.portal_x 0
scoreboard players set @e[tag=42.portal_temp,tag=42.portal] 42.portal_y 0
scoreboard players set @e[tag=42.portal_temp,tag=42.portal] 42.portal_cool 0
execute if entity @s[tag=42.portal_gun_a] run tag @e[tag=42.portal_temp] add 42.portal_a
execute if entity @s[tag=42.portal_gun_b] run tag @e[tag=42.portal_temp] add 42.portal_b
execute if entity @s[tag=42.portal_gun_no_sel] run tag @e[tag=42.portal_temp,tag=42.portal] add 42.portal_no_sel
scoreboard players operation @e[tag=42.portal_temp,tag=42.portal] 42.portal_skin = @s 42.portal_skin
scoreboard players operation @e[tag=42.portal_temp,tag=42.portal_dis] 42.portal_skin = @s 42.portal_skin

execute if entity @s[tag=42.portal_w] run scoreboard players set @e[tag=42.portal_temp,tag=42.portal] 42.portal_x 1
execute if entity @s[tag=42.portal_w] as @e[tag=42.portal_temp] at @s run tp @s ~ ~ ~ 90 ~
execute if entity @s[tag=42.portal_n] run scoreboard players set @e[tag=42.portal_temp,tag=42.portal] 42.portal_x 2
execute if entity @s[tag=42.portal_n] as @e[tag=42.portal_temp] at @s run tp @s ~ ~ ~ 180 ~
execute if entity @s[tag=42.portal_e] run scoreboard players set @e[tag=42.portal_temp,tag=42.portal] 42.portal_x 3
execute if entity @s[tag=42.portal_e] as @e[tag=42.portal_temp] at @s run tp @s ~ ~ ~ -90 ~
execute if entity @s[tag=42.portal_floor] run function 42:portal/portal/setup_floor
execute if entity @s[tag=42.portal_ceiling] run function 42:portal/portal/setup_ceiling
execute as @e[tag=42.portal_temp,tag=42.portal] at @s run function 42:portal/portal/calc_rot
execute as @e[tag=42.portal_temp,tag=42.portal] at @s run function 42:portal/portal/setup_dis

execute as @e[tag=42.portal_temp,tag=42.portal] run function 42:portal/portal/set_name
execute if entity @s[tag=42.portal_gun_a] run tag @e[tag=42.portal_temp] add 42.portal_a
execute if entity @s[tag=42.portal_gun_b] run tag @e[tag=42.portal_temp] add 42.portal_b
execute as @e[tag=42.portal,tag=42.portal_temp] run function 42:portal/portal/set_color_dis
execute as @e[tag=42.portal_dis,tag=42.portal_temp] run function 42:portal/portal/set_back_color_dis

execute as @e[tag=42.portal,tag=42.portal_temp] at @s run function 42:portal/portal/set_blocks
tag @e remove 42.portal_temp