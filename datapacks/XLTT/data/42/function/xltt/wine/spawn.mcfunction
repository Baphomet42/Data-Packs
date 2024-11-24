tag @e remove 42.tag.xltt.temp_spawn

data modify storage 42:xltt temp.Owner set from entity @s Owner
execute store result storage 42:xltt temp.m0 double .001 run data get entity @s Motion[0] 666
execute store result storage 42:xltt temp.m1 double .001 run data get entity @s Motion[1] 666
execute store result storage 42:xltt temp.m2 double .001 run data get entity @s Motion[2] 666
function 42:xltt/wine/spawn_macro with storage 42:xltt temp
data remove storage 42:xltt temp

scoreboard players set @e[tag=42.tag.xltt.temp_spawn] 42.obj.datapack 1
tag @e remove 42.tag.xltt.temp_spawn
tag @e[type=potion] remove 42.tag.xltt.wine.new
kill @s[type=experience_bottle]