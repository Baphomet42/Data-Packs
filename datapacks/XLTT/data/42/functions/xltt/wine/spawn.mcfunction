summon potion ~ ~ ~ {Tags:["42.xltt_wine","42.xltt_wine_new"],Item:{id:experience_bottle,Count:1,tag:{Potion:water,custom_potion_effects:[{id:"nausea",duration:300,amplifier:42b}],CustomPotionColor:4721688}},LeftOwner:0b,OnGround:0b,FallDistance:0f,HasBeenShot:1b,Owner:[I;0,0,0,0],Passengers:[{id:marker,Tags:["42.xltt_wine"]}]}
execute store result entity @e[tag=42.xltt_wine_new,limit=1,sort=nearest] Motion[0] double .001 run data get entity @s Motion[0] 1000
execute store result entity @e[tag=42.xltt_wine_new,limit=1,sort=nearest] Motion[1] double .001 run data get entity @s Motion[1] 1000
execute store result entity @e[tag=42.xltt_wine_new,limit=1,sort=nearest] Motion[2] double .001 run data get entity @s Motion[2] 1000
execute store result entity @e[tag=42.xltt_wine_new,limit=1,sort=nearest] Owner[0] int 1 run data get entity @s Owner[0] 1
execute store result entity @e[tag=42.xltt_wine_new,limit=1,sort=nearest] Owner[1] int 1 run data get entity @s Owner[1] 1
execute store result entity @e[tag=42.xltt_wine_new,limit=1,sort=nearest] Owner[2] int 1 run data get entity @s Owner[2] 1
execute store result entity @e[tag=42.xltt_wine_new,limit=1,sort=nearest] Owner[3] int 1 run data get entity @s Owner[3] 1
tag @e[type=potion] remove 42.xltt_wine_new
kill @s[type=experience_bottle]