scoreboard players set #42.var.portal.dummy 42.obj.portal.temp 0
tag @s remove 42.tag.portal.temp3
execute if entity @e[scores={42.obj.portal.link=-1}] run scoreboard players add #42.var.portal.dummy 42.obj.portal.link 1
execute if entity @e[scores={42.obj.portal.link=-1}] run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.4
execute if entity @e[scores={42.obj.portal.link=-1}] run tag @s add 42.tag.portal.temp3
scoreboard players operation @e[scores={42.obj.portal.link=-1}] 42.obj.portal.link = #42.var.portal.dummy 42.obj.portal.link
execute as @e[scores={42.obj.portal.link=1..}] at @s unless entity @s[tag=42.tag.portal.decal.wire.lbl] if score @s 42.obj.portal.link = #42.var.portal.dummy 42.obj.portal.link run summon area_effect_cloud ~ ~ ~ {Tags:["42.tag.summon"],Duration:30,DurationOnUse:0,custom_particle:{type:"minecraft:flash",color:[1,1,1,1]},Radius:.25d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0}
execute as @e[scores={42.obj.portal.link=1..}] at @s unless entity @s[tag=42.tag.portal.decal.wire.lbl] if score @s 42.obj.portal.link = #42.var.portal.dummy 42.obj.portal.link run scoreboard players add #42.var.portal.dummy 42.obj.portal.temp 1
execute positioned ~ ~ ~ run function 42:portal/tools/notif
execute if entity @s[tag=42.tag.portal.temp3] as @e[tag=42.tag.portal.notif,limit=1,sort=nearest] run function 42:portal/tools/resolve {text:[{text:"Linked "},{score:{name:"#42.var.portal.dummy",objective:"42.obj.portal.temp"}},{text:" new equipment"}],tag:"CustomName"}
execute if entity @s[tag=!42.tag.portal.temp3] if score #42.var.portal.dummy 42.obj.portal.temp matches 1.. as @e[tag=42.tag.portal.notif,limit=1,sort=nearest] run function 42:portal/tools/resolve {text:[{text:"Previous link has "},{score:{name:"#42.var.portal.dummy",objective:"42.obj.portal.temp"}},{text:" equipment"}],tag:"CustomName"}
execute if entity @s[tag=!42.tag.portal.temp3] if score #42.var.portal.dummy 42.obj.portal.temp matches 0 as @e[tag=42.tag.portal.notif,limit=1,sort=nearest] run function 42:portal/tools/resolve {text:["No equipment to link"],tag:"CustomName"}
execute as @e[tag=42.tag.portal.decal.wire.unlinked] at @s run function 42:portal/decal/wire/set
kill @s[type=area_effect_cloud]
execute if score #42.var.portal.dummy 42.obj.portal.link matches 2000000000.. run tellraw @a {text:"42datapack error (3): [link] overflow warning",color:"red"}