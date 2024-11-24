# hat
scoreboard players enable @a hat
execute as @a[scores={hat=..-1}] at @s run function 42:essentials/hat
execute as @a[scores={hat=1..}] at @s run function 42:essentials/hat

# kittycannon
scoreboard players enable @a kittycannon
execute as @a[scores={kittycannon=..-1}] run function 42:essentials/kittycannon
execute as @a[scores={kittycannon=1..}] run function 42:essentials/kittycannon
execute as @e[type=cat,tag=42.tag.essentials.kittycannon] run function 42:essentials/kittycannon_tick

schedule function 42:essentials/tick5 5t replace