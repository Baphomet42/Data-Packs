tag @e remove 42.tag.posers.temp
tag @n[type=mannequin,tag=!42.tag.posers.locked,distance=..9.9942] add 42.tag.posers.temp
execute unless entity @e[type=mannequin,limit=1,x=0,tag=42.tag.posers.temp] run return run title @s actionbar {text:"No unlocked mannequins nearby",color:"red"}
execute at @e[type=mannequin,limit=1,x=0,tag=42.tag.posers.temp] run particle flash{color:[1,1,1,1]}
tag @e remove 42.tag.posers.temp