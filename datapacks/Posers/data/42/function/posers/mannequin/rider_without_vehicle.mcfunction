function 42:posers/match_id

execute as @e[type=mannequin,predicate=42:posers/match_id] run return run function 42:posers/mannequin/reset

execute at @s align y run tp @s ~ ~ ~
execute if score #42.var.posers.match_id 42.obj.posers.id matches 1.. run tellraw @a [{text:"Posers Datapack Warning: ",color:"red"},"Linked mannequin with ID=",{score:{name:"#42.var.posers.match_id",objective:"42.obj.posers.id"}}," at Pos=",{entity:"@s",nbt:"Pos"}," is missing."]
kill @e[predicate=42:posers/match_id,tag=42.tag.posers.mannequin.rider]