scoreboard players enable @a 42menu
tellraw @a[scores={42menu=1}] {"text":"------------------------------","color":"dark_gray"}
execute as @a[scores={42menu=1..}] at @s run function #42:menu
execute as @a[scores={42menu=..-1}] at @s run function #42:menu
scoreboard players set @a 42menu 0
schedule function 42:42menu 1t replace