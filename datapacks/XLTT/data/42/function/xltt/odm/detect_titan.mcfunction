tag @e remove 42.temp_sel
tag @s add 42.temp_sel
tag @e remove 42.odm_col
execute positioned ~ ~-12 ~ as @e[tag=42.xltt_titan,distance=..15] at @s positioned ~-2 ~ ~-2 run tag @e[tag=42.temp_sel,dx=3,dy=10.75,dz=3] add 42.odm_col
tag @s remove 42.temp_sel