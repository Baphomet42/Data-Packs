tag @e remove 42.titan_sel
tag @s add 42.titan_sel
execute on attacker if entity @s[nbt={SelectedItem:{tag:{odm:1b}}}] run kill @e[tag=42.titan_sel,tag=42.titanHit]
data remove entity @s attack