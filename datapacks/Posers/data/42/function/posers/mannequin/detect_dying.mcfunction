execute unless entity @s[type=mannequin,tag=42.tag.posers.mannequin] run return fail
# TODO config to enable warning
#tellraw @a [{text:"Posers Datapack Warning: ",color:"red"},"Linked mannequin at Pos=",{entity:"@s",nbt:"Pos"}," has been killed."]
function 42:posers/mannequin/kill