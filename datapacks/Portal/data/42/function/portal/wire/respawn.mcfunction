tag @e remove 42.tag.portal.new_spawn
execute align xyz positioned ~.5 ~.5 ~.5 run summon block_display ~ ~ ~ {Tags:["42.tag.portal.wire","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"Wire"',block_state:{Name:light_blue_concrete},view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.125f,-.125f,-.6875f],scale:[.25f,.25f,.25f]},Passengers:[{id:text_display,Tags:["42.tag.portal.wire","42.tag.portal.new_spawn","42.tag.portal.wire.lbl"],CustomNameVisible:0b,CustomName:'"42portal"',text:'{"text":"\\u274C","color":"black"}',alignment:center,background:0,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.05f,-.515f,-.4375f],scale:[3.75f,3.75f,3.75f]}}]}
$scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.link $(link)
$scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.lvl $(lvl)
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=!42.tag.portal.wire.lbl] 42.obj.portal.var.z $(z)
$execute as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s $(rotation_0) $(rotation_1)
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3

$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=!42.tag.portal.wire.lbl] 42.obj.portal.skin $(skin)
scoreboard players remove @e[tag=42.tag.portal.new_spawn,tag=!42.tag.portal.wire.lbl] 42.obj.portal.skin 1
execute as @e[tag=42.tag.portal.new_spawn,tag=!42.tag.portal.wire.lbl] at @s run function 42:portal/wire/skin

tag @e remove 42.tag.portal.new_spawn