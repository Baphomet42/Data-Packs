execute at @s anchored eyes rotated 0 0 run summon cat ^ ^-.2 ^ {Tags:["kittycannon","needData"],Silent:1,Invulnerable:1,Sitting:1,Age:-400,DeathLootTable:"minecraft:empty",CatType:42}
#
execute at @s run data modify entity @e[type=cat,tag=kittycannon,tag=needData,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute as @e[type=cat,tag=kittycannon,tag=needData,limit=1,sort=nearest] run function 42:essentials/get_motion
execute at @s run tag @e[type=cat,tag=kittycannon,tag=needData,limit=1,sort=nearest] remove needData
#
scoreboard players set @s kittycannon 0