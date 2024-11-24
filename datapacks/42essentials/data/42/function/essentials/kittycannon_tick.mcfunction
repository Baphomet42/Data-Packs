scoreboard players add @s kittycannon 5
execute if score @s kittycannon matches 5 at @s run playsound minecraft:entity.cat.ambient neutral @a ~ ~ ~ 1.5
execute if score @s kittycannon matches 20 at @s run particle explosion
execute if score @s kittycannon matches 20 at @s run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 2
execute if score @s kittycannon matches 20.. at @s run tp @s ~ -512 ~
kill @s[scores={kittycannon=80..}]