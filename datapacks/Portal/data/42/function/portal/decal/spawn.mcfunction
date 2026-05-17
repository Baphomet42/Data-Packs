tag @e remove 42.tag.portal.new_spawn
execute align xyz positioned ~.5 ~.5 ~.5 run summon text_display ~ ~ ~ \
    {Tags:["42.tag.summon","42.tag.portal.decal.basic","42.tag.portal.new_spawn"],CustomNameVisible:false,CustomName:"Decal",text:"",alignment:"center",background:0,view_range:10f}
execute as @e[tag=42.tag.portal.new_spawn,limit=1] run function 42:portal/new_id
scoreboard players set @e[tag=42.tag.portal.new_spawn,limit=1] 42.obj.portal.lvl -1
scoreboard players set @e[tag=42.tag.portal.new_spawn,limit=1] 42.obj.portal.skin 0

function 42:portal/get_rot
execute if entity @s[tag=42.tag.portal.rot.s] as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s 0 ~
execute if entity @s[tag=42.tag.portal.rot.w] as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s 90 ~
execute if entity @s[tag=42.tag.portal.rot.e] as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s -90 ~
execute if entity @s[tag=42.tag.portal.rot.n] as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s 180 ~
execute if entity @s[tag=42.tag.portal.rot.up] as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s ~ -90
execute if entity @s[tag=42.tag.portal.rot.down] as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s ~ 90
execute unless entity @s[tag=!42.tag.portal.rot.up,tag=!42.tag.portal.rot.down] run tag @s add 42.tag.portal.decal.basic.use_player_rotation
function 42:portal/get_rot2
execute if entity @s[tag=42.tag.portal.decal.basic.use_player_rotation] as @p at @s run function 42:portal/get_rot
execute if entity @s[tag=42.tag.portal.decal.basic.use_player_rotation] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.s] as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s 180 ~
execute if entity @s[tag=42.tag.portal.decal.basic.use_player_rotation] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.w] as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s -90 ~
execute if entity @s[tag=42.tag.portal.decal.basic.use_player_rotation] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.e] as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s 90 ~
execute if entity @s[tag=42.tag.portal.decal.basic.use_player_rotation] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.n] as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s 0 ~
execute if entity @s[tag=42.tag.portal.decal.basic.use_player_rotation] run function 42:portal/get_rot2
tag @s remove 42.tag.portal.decal.basic.use_player_rotation

scoreboard players remove @e[tag=42.tag.portal.new_spawn] 42.obj.portal.skin 1
execute as @e[tag=42.tag.portal.new_spawn] at @s run function 42:portal/decal/skin

tag @e remove 42.tag.portal.new_spawn
kill @s[type=glow_item_frame]