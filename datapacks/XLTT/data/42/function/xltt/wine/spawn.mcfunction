data modify storage 42:xltt temp.Owner set from entity @s Owner
execute store result storage 42:xltt temp.m0 double .001 run data get entity @s Motion[0] 666
execute store result storage 42:xltt temp.m1 double .001 run data get entity @s Motion[1] 666
execute store result storage 42:xltt temp.m2 double .001 run data get entity @s Motion[2] 666
function 42:xltt/wine/spawn_macro with storage 42:xltt temp
data remove storage 42:xltt temp

kill @s[type=experience_bottle]