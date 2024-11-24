function 42:portal/tag_id
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.nn] at @s as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] run rotate @s 180 ~
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.ne] at @s as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] run rotate @s -135 ~
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.ee] at @s as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] run rotate @s -90 ~
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.se] at @s as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] run rotate @s -45 ~
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.ss] at @s as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] run rotate @s 0 ~
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.sw] at @s as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] run rotate @s 45 ~
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.ww] at @s as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] run rotate @s 90 ~
execute if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.nw] at @s as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] run rotate @s 135 ~
function 42:portal/get_rot2
tag @e remove 42.tag.portal.id