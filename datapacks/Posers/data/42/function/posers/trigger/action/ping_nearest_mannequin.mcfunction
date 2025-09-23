execute unless entity @e[type=mannequin,distance=..10.1] run playsound minecraft:block.note_block.didgeridoo block @s ~ ~ ~ 2 0
execute unless entity @e[type=mannequin,distance=..10.1] run return run title @s actionbar {text:"No mannequin in range",color:"red"}

execute at @n[type=mannequin,distance=..10.1] run particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 0 1 force @s
execute at @n[type=mannequin,distance=..10.1] run playsound minecraft:block.note_block.pling block @s ~ ~ ~ 2 1.4