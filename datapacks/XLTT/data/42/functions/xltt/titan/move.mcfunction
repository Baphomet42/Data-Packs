execute store result score @s 42.odm_x run data get entity @s Motion[0] 100
execute store result score @s 42.odm_z run data get entity @s Motion[2] 100
execute if score @s 42.odm_x matches ..-1 store result score @s 42.odm_x run data get entity @s Motion[0] -100
execute if score @s 42.odm_z matches ..-1 store result score @s 42.odm_z run data get entity @s Motion[2] -100
scoreboard players operation @s 42.odm_x += @s 42.odm_z
execute if score @s[nbt={OnGround:1b}] 42.odm_x matches 10.. run playsound entity.hoglin.step hostile @a ~ ~ ~ 4 .5