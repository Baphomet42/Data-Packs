tag @e remove 42.tag.xltt.temp_detect_titan_sel
tag @s add 42.tag.xltt.temp_detect_titan_sel
tag @e remove 42.tag.xltt.odm.col
execute positioned ~ ~-12 ~ as @e[tag=42.tag.xltt.titan,distance=..15] at @s positioned ~-2 ~ ~-2 run tag @e[tag=42.tag.xltt.temp_detect_titan_sel,dx=3,dy=10.75,dz=3] add 42.tag.xltt.odm.col
tag @s remove 42.tag.xltt.temp_detect_titan_sel