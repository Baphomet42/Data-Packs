execute unless entity @s[type=mannequin] run return fail

function 42:posers/mannequin/kill_linked

tag @e remove 42.tag.posers.new_spawn
summon interaction ~ ~ ~ {Tags:["42.tag.posers.new_spawn","42.tag.posers.mannequin.interaction_spacer","42.tag.posers.mannequin.rider"],width:0,height:0,Rotation:[0f,-90f],Passengers:[{id:"interaction",Tags:["42.tag.posers.new_spawn","42.tag.posers.mannequin.interaction","42.tag.posers.mannequin.rider"],width:0,height:0,response:true,Rotation:[0f,90f]}]}
ride @e[type=interaction,tag=42.tag.posers.new_spawn,tag=42.tag.posers.mannequin.interaction_spacer,limit=1] mount @s

execute store result storage 42:posers temp.hitbox.height double .0019 run attribute @s scale get 1000
execute store result storage 42:posers temp.hitbox.width double .00065 run attribute @s scale get 1000
data modify entity @e[type=interaction,tag=42.tag.posers.new_spawn,tag=42.tag.posers.mannequin.interaction,limit=1,x=0] {} merge from storage 42:posers temp.hitbox
data remove storage 42:posers temp
execute store result entity @e[type=interaction,tag=42.tag.posers.new_spawn,tag=42.tag.posers.mannequin.interaction_spacer,limit=1,x=0] height double -.00185 run attribute @s scale get 1000

execute store result score @s 42.obj.posers.scale run attribute @s scale get 1000

tag @e remove 42.tag.posers.new_spawn