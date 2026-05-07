function 42:portal/tag_id
tag @s remove 42.tag.portal.btn.on
execute unless entity @s[tag=42.tag.portal.btn.cube] positioned ~-.5 ~-.625 ~-.5 if entity @a[dx=0,dy=0,dz=0,gamemode=!spectator,limit=1] run tag @s add 42.tag.portal.btn.on
execute positioned ~-.875 ~-.625 ~-.875 if entity @e[dx=.75,dy=0,dz=.75,tag=42.tag.portal.cube.main,tag=42.tag.portal.cube.weighted,limit=1] run tag @s add 42.tag.portal.btn.on
execute if entity @s[tag=!42.tag.portal.btn.cube] run function 42:portal/button/effect
execute if entity @s[tag=42.tag.portal.btn.cube] run function 42:portal/button/effect_cube
tag @s[tag=42.tag.portal.btn.on] add 42.tag.portal.btn.on2
tag @s[tag=!42.tag.portal.btn.on] remove 42.tag.portal.btn.on2
execute if entity @s[tag=42.tag.portal.btn.on] positioned ~-.5 ~-.88 ~-.5 as @e[dx=0,dy=0,dz=0,tag=42.tag.portal.cube.main] at @s run tp @s ~ ~.1875 ~
tag @e remove 42.tag.portal.id