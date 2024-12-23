execute unless entity @s[tag=42.tag.portal.zone.show] run return 0

function 42:portal/tag_id
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.group,tag=!42.tag.portal.zone]

tag @e remove 42.tag.portal.zone.update_temp
summon text_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.zone.update_temp","42.tag.portal.zone.lbl","42.tag.portal.zone.group"],CustomNameVisible:0b,CustomName:'"42portal"',text:'"Zone"',see_through:true,alignment:center,billboard:vertical,view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.125f,0f],scale:[1f,1f,1f]},Passengers:[\
    {id:"minecraft:text_display",Tags:["42.tag.summon","42.tag.portal.zone.update_temp","42.tag.portal.zone.lbl.lvl","42.tag.portal.zone.group"],CustomNameVisible:0b,CustomName:'"42portal"',text:'""',alignment:center,billboard:vertical,background:0,view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.666f,0f],scale:[1f,1f,1f]}},\
    {id:"minecraft:text_display",Tags:["42.tag.summon","42.tag.portal.zone.update_temp","42.tag.portal.zone.lbl.cool","42.tag.portal.zone.group"],CustomNameVisible:0b,CustomName:'"42portal"',text:'""',alignment:center,billboard:vertical,background:0,view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]}},\
    {id:"minecraft:text_display",Tags:["42.tag.summon","42.tag.portal.zone.update_temp","42.tag.portal.zone.lbl.extra","42.tag.portal.zone.lbl.pow","42.tag.portal.zone.group"],CustomNameVisible:0b,CustomName:'"42portal"',text:'""',alignment:center,billboard:vertical,background:0,view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.333f,0f],scale:[1f,1f,1f]}},\
    {id:"minecraft:text_display",Tags:["42.tag.summon","42.tag.portal.zone.update_temp","42.tag.portal.zone.lbl.extra","42.tag.portal.zone.lbl.unpow","42.tag.portal.zone.group"],CustomNameVisible:0b,CustomName:'"42portal"',text:'""',alignment:center,billboard:vertical,background:0,view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.666f,0f],scale:[1f,1f,1f]}},\
    {id:"minecraft:text_display",Tags:["42.tag.summon","42.tag.portal.zone.update_temp","42.tag.portal.zone.lbl.extra","42.tag.portal.zone.lbl.spawn","42.tag.portal.zone.group"],CustomNameVisible:0b,CustomName:'"42portal"',text:'""',alignment:center,billboard:vertical,background:0,view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]}},\
    {id:"minecraft:text_display",Tags:["42.tag.summon","42.tag.portal.zone.update_temp","42.tag.portal.zone.lbl.extra","42.tag.portal.zone.lbl.fizzle","42.tag.portal.zone.group"],CustomNameVisible:0b,CustomName:'"42portal"',text:'""',alignment:center,billboard:vertical,background:0,view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.333f,0f],scale:[1f,1f,1f]}},\
    {id:"minecraft:text_display",Tags:["42.tag.summon","42.tag.portal.zone.update_temp","42.tag.portal.zone.lbl.extra","42.tag.portal.zone.lbl.grill","42.tag.portal.zone.group"],CustomNameVisible:0b,CustomName:'"42portal"',text:'""',alignment:center,billboard:vertical,background:0,view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.666f,0f],scale:[1f,1f,1f]}}]}
scoreboard players operation @e[tag=42.tag.portal.zone.update_temp] 42.obj.portal.id = @s 42.obj.portal.id
ride @e[limit=1,type=text_display,tag=42.tag.portal.zone.update_temp,tag=42.tag.portal.zone.lbl] mount @s
tag @e remove 42.tag.portal.zone.update_temp

function 42:portal/tag_id

execute if score @s 42.obj.portal.var.x matches 0 as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl] run data modify entity @s text set value '"Load Zone"'
execute if score @s 42.obj.portal.var.x matches 0 run data modify entity @s CustomName set value '"Load Zone"'
execute if score @s 42.obj.portal.var.x matches 1 as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl] run data modify entity @s text set value '"Trigger Zone"'
execute if score @s 42.obj.portal.var.x matches 1 run data modify entity @s CustomName set value '"Trigger Zone"'
execute if score @s 42.obj.portal.var.x matches 2 as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl] run data modify entity @s text set value '"Death Zone"'
execute if score @s 42.obj.portal.var.x matches 2 run data modify entity @s CustomName set value '"Death Zone"'

execute if score @s 42.obj.portal.lvl matches ..0 as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.lvl] run data modify entity @s text set value '{"text":"No level set"}'
execute if score @s 42.obj.portal.lvl matches ..0 if score @s 42.obj.portal.var.x matches 1..2 as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.lvl] run data modify entity @s text set value '{"text":"No level set","color":"red"}'
execute if score @s 42.obj.portal.lvl matches 1.. as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.lvl] run data modify entity @s text set value '{"text":"Level set"}'
execute if score @s 42.obj.portal.lvl matches 1.. if score @s 42.obj.portal.var.x matches 0 as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.lvl] run data modify entity @s text set value '{"text":"Level set","color":"green"}'
execute if entity @s[tag=!42.tag.portal.zone.cool] as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.cool] run data modify entity @s text set value '{"text":"Ready"}'
execute if entity @s[tag=42.tag.portal.zone.cool] as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.cool] run data modify entity @s text set value '{"text":"On cooldown","color":"red"}'

execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.extra] run data modify entity @s text set value '""'

execute if score @s 42.obj.portal.var.x matches 0 if entity @s[tag=!42.tag.portal.zone.checkpoint] as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.pow] run data modify entity @s text set value '{"text":"Checkpoint [Off]"}'
execute if score @s 42.obj.portal.var.x matches 0 if entity @s[tag=42.tag.portal.zone.checkpoint] as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.pow] run data modify entity @s text set value '{"text":"Checkpoint [On]","color":"green"}'

execute if score @s 42.obj.portal.var.x matches 1 if score @s 42.obj.portal.xrot1 matches ..0 as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.pow] run data modify entity @s text set value '{"text":"No power link set"}'
execute if score @s 42.obj.portal.var.x matches 1 if score @s 42.obj.portal.xrot1 matches 1.. as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.pow] run data modify entity @s text set value '{"text":"Power link set","color":"green"}'
execute if score @s 42.obj.portal.var.x matches 1 if score @s 42.obj.portal.xrot2 matches ..0 as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.unpow] run data modify entity @s text set value '{"text":"No unpower link set"}'
execute if score @s 42.obj.portal.var.x matches 1 if score @s 42.obj.portal.xrot2 matches 1.. as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.unpow] run data modify entity @s text set value '{"text":"Unpower link set","color":"green"}'
execute if score @s 42.obj.portal.var.x matches 1 if entity @s[tag=!42.tag.portal.zone.has_spawn] as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.spawn] run data modify entity @s text set value '{"text":"No spawn id set"}'
execute if score @s 42.obj.portal.var.x matches 1 if entity @s[tag=42.tag.portal.zone.has_spawn] as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.spawn] run data modify entity @s text set value '{"text":"Spawn id set","color":"green"}'
execute if score @s 42.obj.portal.var.x matches 1 if entity @s[tag=!42.tag.portal.zone.has_fizzle] as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.fizzle] run data modify entity @s text set value '{"text":"No fizzle id set"}'
execute if score @s 42.obj.portal.var.x matches 1 if entity @s[tag=42.tag.portal.zone.has_fizzle] as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.fizzle] run data modify entity @s text set value '{"text":"Fizzle id set","color":"green"}'
execute if score @s 42.obj.portal.var.x matches 1 if entity @s[tag=42.tag.portal.zone.grill] as @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.lbl.grill] run data modify entity @s text set value '{"text":"Emancipation On","color":"green"}'

tag @e remove 42.tag.portal.id