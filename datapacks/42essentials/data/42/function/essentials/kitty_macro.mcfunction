$execute at @s anchored eyes run summon cat ^ ^-.2 ^.2 {Tags:["42.tag.summon","42.tag.essentials.kittycannon","42.tag.essentials.need_data"],Silent:1b,Invulnerable:1b,Sitting:1b,Age:-400,Rotation:$(Rotation),DeathLootTable:"42:empty",PersistenceRequired:1b,Team:"42.team.gen.no_col"}

execute store result score #random kittycannon run random value 0..10
execute if score #random kittycannon matches 0 run return run data modify entity @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] variant set value "white"
execute if score #random kittycannon matches 1 run return run data modify entity @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] variant set value "black"
execute if score #random kittycannon matches 2 run return run data modify entity @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] variant set value "red"
execute if score #random kittycannon matches 3 run return run data modify entity @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] variant set value "siamese"
execute if score #random kittycannon matches 4 run return run data modify entity @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] variant set value "british_shorthair"
execute if score #random kittycannon matches 5 run return run data modify entity @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] variant set value "calico"
execute if score #random kittycannon matches 6 run return run data modify entity @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] variant set value "persian"
execute if score #random kittycannon matches 7 run return run data modify entity @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] variant set value "ragdoll"
execute if score #random kittycannon matches 8 run return run data modify entity @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] variant set value "tabby"
execute if score #random kittycannon matches 9 run return run data modify entity @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] variant set value "all_black"
execute if score #random kittycannon matches 10 run return run data modify entity @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] variant set value "jellie"