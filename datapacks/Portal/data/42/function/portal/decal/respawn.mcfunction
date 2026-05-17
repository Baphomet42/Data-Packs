tag @e remove 42.tag.portal.new_spawn
execute align xyz positioned ~.5 ~.5 ~.5 run summon text_display ~ ~ ~ \
    {Tags:["42.tag.summon","42.tag.portal.decal.basic","42.tag.portal.new_spawn"],CustomNameVisible:false,CustomName:"Decal",text:"",alignment:"center",background:0,view_range:10f}
$scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id $(id)
execute store result score @e[tag=42.tag.portal.new_spawn] 42.obj.portal.lvl run data get storage 42:portal loader.lvl
$scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.skin $(skin)
$execute as @e[tag=42.tag.portal.new_spawn] at @s run rotate @s $(rotation_0) $(rotation_1)

scoreboard players remove @e[tag=42.tag.portal.new_spawn] 42.obj.portal.skin 1
execute as @e[tag=42.tag.portal.new_spawn] at @s run function 42:portal/decal/skin

tag @e remove 42.tag.portal.new_spawn