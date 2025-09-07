execute unless entity @s[type=mannequin] run return fail

function 42:posers/mannequin/kill_linked

tag @e remove 42.tag.posers.new_spawn
summon interaction ~ ~ ~ {Tags:["42.tag.posers.new_spawn","42.tag.posers.mannequin.interaction_spacer","42.tag.posers.mannequin.rider"],width:0,height:-1.85,Passengers:[{id:"interaction",Tags:["42.tag.posers.new_spawn","42.tag.posers.mannequin.interaction","42.tag.posers.mannequin.rider"],width:.65,height:1.9,response:true}]}
ride @e[type=interaction,tag=42.tag.posers.new_spawn,tag=42.tag.posers.mannequin.interaction_spacer,limit=1] mount @s

scoreboard players operation @e[tag=42.tag.posers.new_spawn] 42.obj.posers.id = @s 42.obj.posers.id

tag @e remove 42.tag.posers.new_spawn