$execute at @s anchored eyes run summon cat ^ ^-.2 ^.2 {Tags:["kittycannon","needData"],Silent:1b,Invulnerable:1b,Sitting:1b,Age:-400,Rotation:$(Rotation),DeathLootTable:"minecraft:empty",Team:"42.no_col"}

execute store result score .random kittycannon run random value 0..10
execute if score .random kittycannon matches 0 run return run data modify entity @e[tag=kittycannon,tag=needData,limit=1] variant set value "white"
execute if score .random kittycannon matches 1 run return run data modify entity @e[tag=kittycannon,tag=needData,limit=1] variant set value "black"
execute if score .random kittycannon matches 2 run return run data modify entity @e[tag=kittycannon,tag=needData,limit=1] variant set value "red"
execute if score .random kittycannon matches 3 run return run data modify entity @e[tag=kittycannon,tag=needData,limit=1] variant set value "siamese"
execute if score .random kittycannon matches 4 run return run data modify entity @e[tag=kittycannon,tag=needData,limit=1] variant set value "british_shorthair"
execute if score .random kittycannon matches 5 run return run data modify entity @e[tag=kittycannon,tag=needData,limit=1] variant set value "calico"
execute if score .random kittycannon matches 6 run return run data modify entity @e[tag=kittycannon,tag=needData,limit=1] variant set value "persian"
execute if score .random kittycannon matches 7 run return run data modify entity @e[tag=kittycannon,tag=needData,limit=1] variant set value "ragdoll"
execute if score .random kittycannon matches 8 run return run data modify entity @e[tag=kittycannon,tag=needData,limit=1] variant set value "tabby"
execute if score .random kittycannon matches 9 run return run data modify entity @e[tag=kittycannon,tag=needData,limit=1] variant set value "all_black"
execute if score .random kittycannon matches 10 run return run data modify entity @e[tag=kittycannon,tag=needData,limit=1] variant set value "jellie"