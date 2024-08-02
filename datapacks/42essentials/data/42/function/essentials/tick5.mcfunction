# hat
scoreboard players enable @a hat
execute as @a[scores={hat=..-1}] at @s run function 42:essentials/hat
execute as @a[scores={hat=1..}] at @s run function 42:essentials/hat

# kittycannon
scoreboard players enable @a kittycannon
execute as @a[scores={kittycannon=..-1}] run function 42:essentials/kittycannon
execute as @a[scores={kittycannon=1..}] run function 42:essentials/kittycannon

scoreboard players add @e[type=cat,tag=kittycannon] kittycannon 5
execute at @e[type=cat,scores={kittycannon=5}] run playsound minecraft:entity.cat.ambient neutral @a ~ ~ ~ 1.5
execute at @e[type=cat,scores={kittycannon=20}] run particle explosion
execute at @e[type=cat,scores={kittycannon=20}] run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 2
kill @e[type=cat,scores={kittycannon=80..}]
tp @e[type=cat,scores={kittycannon=20..}] ~ -512 ~

schedule function 42:essentials/tick5 5t replace