tag @e remove 42.tag.portal.new_spawn
execute align xyz positioned ~.5 ~.5 ~.5 run summon block_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.wire","42.tag.portal.new_spawn"],CustomNameVisible:0b,CustomName:'"Wire"',block_state:{Name:light_blue_concrete},view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.125f,-.125f,-.6875f],scale:[.25f,.25f,.25f]},Passengers:[{id:text_display,Tags:["42.tag.summon","42.tag.portal.wire","42.tag.portal.new_spawn","42.tag.portal.wire.lbl"],CustomNameVisible:0b,CustomName:'"42portal"',text:'{"text":"\\u274C","color":"black"}',alignment:center,background:0,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.05f,-.515f,-.4375f],scale:[3.75f,3.75f,3.75f]}}]}
scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.link = #42.var.portal.dummy 42.obj.portal.link
execute rotated as @s as @e[tag=42.tag.portal.new_spawn] run rotate @s ~ ~
scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.lvl -1
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=!42.tag.portal.wire.lbl] 42.obj.portal.skin 0
execute at @s run function 42:portal/get_rot
execute if entity @s[tag=42.tag.portal.rot.s] run scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 0
execute if entity @s[tag=42.tag.portal.rot.w] run scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 1
execute if entity @s[tag=42.tag.portal.rot.e] run scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 2
execute if entity @s[tag=42.tag.portal.rot.n] run scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 3
execute if entity @s[tag=42.tag.portal.rot.up] run scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 4
execute if entity @s[tag=42.tag.portal.rot.down] run scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 5
function 42:portal/get_rot2
tag @e remove 42.tag.portal.new_spawn
kill @s[tag=42.tag.portal.wire.unlinked]
tag @s remove 42.tag.portal.wire.unlinked