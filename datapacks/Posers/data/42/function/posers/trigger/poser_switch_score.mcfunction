function 42:posers/trigger/action/ping_nearest_mannequin
tag @a remove 42.tag.posers.this_trigger_player
tag @e remove 42.tag.posers.this_trigger_mannequin
tag @s add 42.tag.posers.this_trigger_player
tag @n[type=mannequin,distance=..10.1] add 42.tag.posers.this_trigger_mannequin

execute if score @s poser matches 1501 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/mannequin/init
execute if score @s poser matches 1502 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/mannequin/unlink
execute if score @s poser matches 1503 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/mannequin/freeze
execute if score @s poser matches 1504 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/mannequin/spawner/drop_item

execute if score @s poser matches 1701 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_tag {tag:"42.tag.posers.mannequin.ai.watch_player",display:"Watch Players"}

execute if score @s poser matches 2001 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"Invulnerable",default:"false",stored:"true"}
execute if score @s poser matches 2002 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"Glowing",default:"false",stored:"true"}
execute if score @s poser matches 2003 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"NoGravity",default:"false",stored:"true"}
execute if score @s poser matches 2004 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"Silent",default:"false",stored:"true"}
execute if score @s poser matches 2005 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"HasVisualFire",default:"false",stored:"true"}
execute if score @s poser matches 2006 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"CustomNameVisible",default:"false",stored:"true"}
execute if score @s poser matches 2007 unless items entity @s weapon.mainhand * run data remove entity @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] CustomName
execute if score @s poser matches 2007 unless items entity @s weapon.mainhand * run return run title @s actionbar ["",{text:"Cleared CustomName from ",color:"gray"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]
execute if score @s poser matches 2007 if items entity @s weapon.mainhand *[custom_name] run data modify entity @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] CustomName set from entity @s SelectedItem.components.minecraft:custom_name
execute if score @s poser matches 2007 if items entity @s weapon.mainhand *[custom_name] run return run title @s actionbar ["",{text:"Set CustomName for ",color:"gray"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]
execute if score @s poser matches 2007 run return run tellraw @s {text:"Failed to set name. Hold an item with a custom_name to copy, or an empty hand to clear the name.",color:"red"}

execute if score @s poser matches 3001 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"immovable",default:"false",stored:"true"}
execute if score @s poser matches 3002 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_nbt {key:"hide_description",default:"false",stored:"true"}
execute if score @s poser matches 3003 unless items entity @s weapon.mainhand * run data remove entity @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] description
execute if score @s poser matches 3003 unless items entity @s weapon.mainhand * run return run title @s actionbar ["",{text:"Cleared description from ",color:"gray"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]
execute if score @s poser matches 3003 if items entity @s weapon.mainhand *[custom_name] run data modify entity @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] description set from entity @s SelectedItem.components.minecraft:custom_name
execute if score @s poser matches 3003 if items entity @s weapon.mainhand *[custom_name] run return run title @s actionbar ["",{text:"Set description for ",color:"gray"},{selector:"@n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin]"}]
execute if score @s poser matches 3003 run return run tellraw @s {text:"Failed to set description. Hold an item with a custom_name to copy, or an empty hand to reset the description.",color:"red"}

execute if score @s poser matches 3101 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"cape"}
execute if score @s poser matches 3102 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"hat"}
execute if score @s poser matches 3103 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"jacket"}
execute if score @s poser matches 3104 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"right_sleeve"}
execute if score @s poser matches 3105 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"left_sleeve"}
execute if score @s poser matches 3106 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"right_pants_leg"}
execute if score @s poser matches 3107 as @n[type=mannequin,tag=42.tag.posers.this_trigger_mannequin] run return run function 42:posers/trigger/action/toggle_hidden_layer {layer:"left_pants_leg"}

tellraw @s [{text:"Invalid trigger input for 'poser': ",color:"red"},{score:{name:"@s",objective:"poser"}}]