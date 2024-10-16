scoreboard players set 42.portal 42.portal_temp 0
tag @s remove 42.portal_temp3
execute if entity @e[scores={42.portal_lvl=-1},type=!player,tag=!42.portal] run scoreboard players add 42.portal 42.portal_lvl 1
execute if entity @e[scores={42.portal_lvl=-1},type=!player,tag=!42.portal] run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.4
execute if entity @e[scores={42.portal_lvl=-1},type=!player,tag=!42.portal] run tag @s add 42.portal_temp3
scoreboard players operation @p 42.portal_lvl = 42.portal 42.portal_lvl
scoreboard players operation @e[scores={42.portal_lvl=-1},tag=!42.portal] 42.portal_lvl = 42.portal 42.portal_lvl
tag @e remove 42.portal_new_spawn
execute as @e[scores={42.portal_lvl=1..},type=!player] at @s unless entity @s[tag=42.portal_wire_lbl] if score @s 42.portal_lvl = 42.portal 42.portal_lvl run summon area_effect_cloud ~ ~ ~ {Tags:["42.portal_new_spawn"],Duration:30,DurationOnUse:0,Particle:{type:flash},Radius:.25d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0}
execute as @e[scores={42.portal_lvl=1..},type=!player] at @s unless entity @s[tag=42.portal_wire_lbl] if score @s 42.portal_lvl = 42.portal 42.portal_lvl run scoreboard players add 42.portal 42.portal_temp 1
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
tag @e remove 42.portal_new_spawn
execute positioned ~ ~ ~ run function 42:portal/tools/notif
execute if entity @s[tag=42.portal_temp3] as @e[tag=42.portal_notif,limit=1,sort=nearest] run function 42:portal/tools/resolve {text:'\'[{"text":"Set level for "},{"score":{"name":"42.portal","objective":"42.portal_temp"}},{"text":" new equipment"}]\'',tag:CustomName}
execute if entity @s[tag=!42.portal_temp3] if score 42.portal 42.portal_temp matches 1.. as @e[tag=42.portal_notif,limit=1,sort=nearest] run function 42:portal/tools/resolve {text:'\'[{"text":"Previous level has "},{"score":{"name":"42.portal","objective":"42.portal_temp"}},{"text":" equipment"}]\'',tag:CustomName}
tag @e remove 42.portal_resolve
kill @s[type=area_effect_cloud]
execute if score 42.portal 42.portal_lvl matches 2000000000.. run tellraw @a {"text":"42datapack error (3): [lvl] overflow warning","color":"red"}