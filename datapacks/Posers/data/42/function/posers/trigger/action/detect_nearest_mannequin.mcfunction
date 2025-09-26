function 42:posers/trigger/action/ping_nearest_mannequin
tag @a remove 42.tag.posers.temp_self
tag @s add 42.tag.posers.temp_self
execute as @n[type=mannequin,distance=..10.1] if entity @s[tag=42.tag.posers.mannequin] run title @a[tag=42.tag.posers.temp_self,limit=1] actionbar [{text:"",color:"yellow"},{text:"Nearest mannequin poser: ",color:"gold"},{selector:"@n[type=mannequin,distance=..10.1]"}]
execute as @n[type=mannequin,distance=..10.1] if entity @s[tag=!42.tag.posers.mannequin] run title @a[tag=42.tag.posers.temp_self,limit=1] actionbar [{text:"",color:"yellow"},{text:"Nearest mannequin: ",color:"gold"},{selector:"@n[type=mannequin,distance=..10.1]"}]
tag @s remove 42.tag.posers.temp_self