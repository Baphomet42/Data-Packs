tag @e remove 42.tag.portal.new_spawn
execute align xyz positioned ~.5 ~.5 ~.5 run summon block_display ~ ~ ~ \
    {Tags:["42.tag.summon","42.tag.portal.decal.wire","42.tag.portal.new_spawn"],CustomNameVisible:false,CustomName:"Wire",block_state:{Name:"minecraft:light_blue_concrete"},view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.125f,-.125f,-.5f],scale:[.25f,.25f,.01f]},Passengers:[\
    {id:"minecraft:text_display",Tags:["42.tag.summon","42.tag.portal.decal.wire","42.tag.portal.new_spawn","42.tag.portal.decal.wire.lbl"],CustomNameVisible:false,CustomName:"42portal",text:{text:"\u274C",color:"black"},alignment:"center",background:0,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.05f,-.515f,-.485f],scale:[3.75f,3.75f,3.75f]}}]}
$scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.link $(link)
execute store result score @e[tag=42.tag.portal.new_spawn] 42.obj.portal.lvl run data get storage 42:portal loader.lvl
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=!42.tag.portal.decal.wire.lbl] 42.obj.portal.var.z $(z)
$execute as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s $(rotation_0) $(rotation_1)

$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=!42.tag.portal.decal.wire.lbl] 42.obj.portal.skin $(skin)
scoreboard players remove @e[tag=42.tag.portal.new_spawn,tag=!42.tag.portal.decal.wire.lbl] 42.obj.portal.skin 1
execute as @e[tag=42.tag.portal.new_spawn,tag=!42.tag.portal.decal.wire.lbl] at @s run function 42:portal/decal/wire/skin

tag @e remove 42.tag.portal.new_spawn