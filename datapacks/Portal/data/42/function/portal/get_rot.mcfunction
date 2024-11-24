function 42:portal/get_rot2

tag @s add 42.tag.portal.rot

execute if entity @s[y_rotation=-135..-45] run tag @s add 42.tag.portal.rot.e
execute if entity @s[y_rotation=-45..45,tag=!42.tag.portal.rot.e] run tag @s add 42.tag.portal.rot.s
execute if entity @s[y_rotation=45..135,tag=!42.tag.portal.rot.s] run tag @s add 42.tag.portal.rot.w
execute if entity @s[y_rotation=135..225,tag=!42.tag.portal.rot.w] run tag @s add 42.tag.portal.rot.n
tag @s[tag=42.tag.portal.rot.n] remove 42.tag.portal.rot.e

execute if entity @s[y_rotation=157.5..202.5] run tag @s add 42.tag.portal.rot.nn
execute if entity @s[y_rotation=-157.5..-112.5,tag=!42.tag.portal.rot.nn] run tag @s add 42.tag.portal.rot.ne
execute if entity @s[y_rotation=-112.5..-67.5,tag=!42.tag.portal.rot.ne] run tag @s add 42.tag.portal.rot.ee
execute if entity @s[y_rotation=-67.5..-22.5,tag=!42.tag.portal.rot.ee] run tag @s add 42.tag.portal.rot.se
execute if entity @s[y_rotation=-22.5..22.5,tag=!42.tag.portal.rot.se] run tag @s add 42.tag.portal.rot.ss
execute if entity @s[y_rotation=22.5..67.5,tag=!42.tag.portal.rot.ss] run tag @s add 42.tag.portal.rot.sw
execute if entity @s[y_rotation=67.5..112.5,tag=!42.tag.portal.rot.sw] run tag @s add 42.tag.portal.rot.ww
execute if entity @s[y_rotation=112.5..157.5,tag=!42.tag.portal.rot.ww] run tag @s add 42.tag.portal.rot.nw
tag @s[tag=42.tag.portal.rot.nw] remove 42.tag.portal.rot.nn

execute if entity @s[x_rotation=-45..45] run tag @s add 42.tag.portal.rot.mid
execute if entity @s[x_rotation=-90..-45,tag=!42.tag.portal.rot.mid] run tag @s add 42.tag.portal.rot.up
execute if entity @s[x_rotation=45..90,tag=!42.tag.portal.rot.mid] run tag @s add 42.tag.portal.rot.down