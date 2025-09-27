function 42:posers/trigger/action/ping_nearest_mannequin
tag @a remove 42.tag.posers.this_trigger_player
tag @e remove 42.tag.posers.this_trigger_mannequin
tag @s add 42.tag.posers.this_trigger_player
tag @n[type=mannequin,distance=..10.1] add 42.tag.posers.this_trigger_mannequin

execute unless entity @e[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return fail

tag @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] add 42.tag.posers.this_trigger_mannequin_tp
execute as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin,predicate=42:posers/custom_sitting] on vehicle run tag @s add 42.tag.posers.this_trigger_mannequin_tp
tag @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin,predicate=42:posers/custom_sitting] remove 42.tag.posers.this_trigger_mannequin_tp

execute if score @s poser matches 1501 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/mannequin/init
execute if score @s poser matches 1502 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/mannequin/unlink
execute if score @s poser matches 1503 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/mannequin/freeze
execute if score @s poser matches 1504 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/mannequin/spawner/drop_item
execute if score @s poser matches 1505 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/mannequin/kill

execute if score @s poser matches 1701 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_tag {tag:"42.tag.posers.mannequin.ai.watch_player",display:"Watch Players"}

execute if score @s poser matches 2001 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"Invulnerable",default:"false",stored:"true"}
execute if score @s poser matches 2002 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"Glowing",default:"false",stored:"true"}
execute if score @s poser matches 2003 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"NoGravity",default:"false",stored:"true"}
execute if score @s poser matches 2004 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"Silent",default:"false",stored:"true"}
execute if score @s poser matches 2005 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"HasVisualFire",default:"false",stored:"true"}
execute if score @s poser matches 2006 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"CustomNameVisible",default:"false",stored:"true"}
execute if score @s poser matches 2007 unless items entity @s weapon.mainhand * run data remove entity @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] CustomName
execute if score @s poser matches 2007 unless items entity @s weapon.mainhand * run return run title @s actionbar [{text:"",color:"yellow"},{text:"Cleared CustomName from ",color:"gold"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]
execute if score @s poser matches 2007 if items entity @s weapon.mainhand *[custom_name] run data modify entity @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] CustomName set from entity @s SelectedItem.components.minecraft:custom_name
execute if score @s poser matches 2007 if items entity @s weapon.mainhand *[custom_name] run return run title @s actionbar [{text:"",color:"yellow"},{text:"Set CustomName for ",color:"gold"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]
execute if score @s poser matches 2007 run return run tellraw @s {text:"Failed to set name. Hold an item with a custom_name to copy, or an empty hand to clear the name.",color:"red"}
execute if score @s poser matches 2008 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_resistance
execute if score @s poser matches 2009 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/copy_slot {slot:"armor.head"}
execute if score @s poser matches 2010 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/copy_slot {slot:"armor.chest"}
execute if score @s poser matches 2011 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/copy_slot {slot:"armor.legs"}
execute if score @s poser matches 2012 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/copy_slot {slot:"armor.feet"}
execute if score @s poser matches 2013 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/copy_slot {slot:"weapon.mainhand"}
execute if score @s poser matches 2014 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/copy_slot {slot:"weapon.offhand"}
execute if score @s poser matches 2015 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/copy_slots
execute if score @s poser matches 2016 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/drop_slots
execute if score @s poser matches 2017 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/swap_hands

execute if score @s poser matches 3001 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"immovable",default:"false",stored:"true"}
execute if score @s poser matches 3002 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"hide_description",default:"false",stored:"true"}
execute if score @s poser matches 3003 unless items entity @s weapon.mainhand * run data remove entity @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] description
execute if score @s poser matches 3003 unless items entity @s weapon.mainhand * run return run title @s actionbar [{text:"",color:"yellow"},{text:"Cleared description from ",color:"gold"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]
execute if score @s poser matches 3003 if items entity @s weapon.mainhand *[custom_name] run data modify entity @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] description set from entity @s SelectedItem.components.minecraft:custom_name
execute if score @s poser matches 3003 if items entity @s weapon.mainhand *[custom_name] run return run title @s actionbar [{text:"",color:"yellow"},{text:"Set description for ",color:"gold"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]
execute if score @s poser matches 3003 run return run tellraw @s {text:"Failed to set description. Hold an item with a custom_name to copy, or an empty hand to reset the description.",color:"red"}
execute if score @s poser matches 3004 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/remove_nbt_path {path:"profile.model"}
execute if score @s poser matches 3005 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/set_nbt_path {path:"profile",key:"model",value:"wide",stored:"remove"}
execute if score @s poser matches 3006 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/set_nbt_path {path:"profile",key:"model",value:"slim",stored:"remove"}
execute if score @s poser matches 3007 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/set_nbt {key:"main_hand",value:"right",stored:"add"}
execute if score @s poser matches 3008 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/set_nbt {key:"main_hand",value:"left",stored:"remove"}
execute if score @s poser matches 3009 unless items entity @s weapon.mainhand * run data modify entity @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] profile set value {}
execute if score @s poser matches 3009 unless items entity @s weapon.mainhand * run return run title @s actionbar [{text:"",color:"yellow"},{text:"Cleared profile from ",color:"gold"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]
execute if score @s poser matches 3009 if items entity @s weapon.mainhand *[profile] run data modify entity @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] profile set from entity @s SelectedItem.components.minecraft:profile
execute if score @s poser matches 3009 if items entity @s weapon.mainhand *[profile] run return run title @s actionbar [{text:"",color:"yellow"},{text:"Set profile for ",color:"gold"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]
execute if score @s poser matches 3009 run return run tellraw @s {text:"Failed to set profile. Hold an item with a profile component to copy, or an empty hand to reset the profile.",color:"red"}
execute if score @s poser matches 3010 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/mannequin/spawner/drop_head
execute if score @s poser matches 3011 run return run data modify entity @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] profile.id set from entity @s UUID

execute if score @s poser matches 3101 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"cape"}
execute if score @s poser matches 3102 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"hat"}
execute if score @s poser matches 3103 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"jacket"}
execute if score @s poser matches 3104 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"right_sleeve"}
execute if score @s poser matches 3105 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"left_sleeve"}
execute if score @s poser matches 3106 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"right_pants_leg"}
execute if score @s poser matches 3107 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"left_pants_leg"}
execute if score @s poser matches 3108 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run data modify entity @s hidden_layers set value ["cape","hat","jacket","right_sleeve","left_sleeve","right_pants_leg","left_pants_leg"]
execute if score @s poser matches 3108 run return run title @s actionbar [{text:"",color:"yellow"},{text:"Set all layers to hidden for ",color:"gold"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]
execute if score @s poser matches 3109 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run data modify entity @s hidden_layers set value []
execute if score @s poser matches 3109 run return run title @s actionbar [{text:"",color:"yellow"},{text:"Set all layers to visible for ",color:"gold"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]

execute if score @s poser matches 3201..3205 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin,predicate=42:posers/custom_sitting] run function 42:posers/mannequin/ai/sit_end
execute if score @s poser matches 3201 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/set_nbt {key:"pose",value:"standing",stored:"add"}
execute if score @s poser matches 3202 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/set_nbt {key:"pose",value:"crouching",stored:"remove"}
execute if score @s poser matches 3203 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/set_nbt {key:"pose",value:"sleeping",stored:"remove"}
execute if score @s poser matches 3204 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/set_nbt {key:"pose",value:"swimming",stored:"remove"}
execute if score @s poser matches 3205 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/set_nbt {key:"pose",value:"fall_flying",stored:"remove"}
execute if score @s poser matches 3250 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/mannequin/ai/sit_toggle

execute if score @s poser matches 3301 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~-1 ~ ~
execute if score @s poser matches 3302 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~-.25 ~ ~
execute if score @s poser matches 3303 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~-.0625 ~ ~
execute if score @s poser matches 3304 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~.0625 ~ ~
execute if score @s poser matches 3305 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~.25 ~ ~
execute if score @s poser matches 3306 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~1 ~ ~
execute if score @s poser matches 3321 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~-1 ~
execute if score @s poser matches 3322 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~-.25 ~
execute if score @s poser matches 3323 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~-.0625 ~
execute if score @s poser matches 3324 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~.0625 ~
execute if score @s poser matches 3325 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~.25 ~
execute if score @s poser matches 3326 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~1 ~
execute if score @s poser matches 3341 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~ ~-1
execute if score @s poser matches 3342 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~ ~-.25
execute if score @s poser matches 3343 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~ ~-.0625
execute if score @s poser matches 3344 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~ ~.0625
execute if score @s poser matches 3345 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~ ~.25
execute if score @s poser matches 3346 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s run return run tp @s ~ ~ ~1
execute if score @s poser matches 3361..3386 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run tag @s remove 42.tag.posers.mannequin.ai.watch_player
execute if score @s poser matches 3361 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~-90 ~
execute if score @s poser matches 3362 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~-45 ~
execute if score @s poser matches 3363 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~-22.5 ~
execute if score @s poser matches 3364 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~22.5 ~
execute if score @s poser matches 3365 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~45 ~
execute if score @s poser matches 3366 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~90 ~
execute if score @s poser matches 3367 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~180 ~
execute if score @s poser matches 3381 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~ ~-90
execute if score @s poser matches 3382 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~ ~-45
execute if score @s poser matches 3383 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~ ~-22.5
execute if score @s poser matches 3384 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~ ~22.5
execute if score @s poser matches 3385 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~ ~45
execute if score @s poser matches 3386 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~ ~90

execute if score @s poser matches 3391 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s align x run return run tp @s ~.5 ~ ~
execute if score @s poser matches 3392 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s positioned ~ ~.5 ~ align y run return run tp @s ~ ~ ~
execute if score @s poser matches 3393 as @n[tag=42.tag.posers.this_trigger_mannequin_tp] at @s align z run return run tp @s ~ ~ ~.5
execute if score @s poser matches 3394..3395 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run tag @s remove 42.tag.posers.mannequin.ai.watch_player
execute if score @s poser matches 3394 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s ~ 0
execute if score @s poser matches 3395 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] at @s run return run rotate @s 0 ~

tellraw @s [{text:"Invalid trigger input for 'poser': ",color:"red"},{score:{name:"@s",objective:"poser"}}]