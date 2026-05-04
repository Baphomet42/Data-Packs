tag @e remove 42.tag.portal.gel.spawner.this
tag @s add 42.tag.portal.gel.spawner.this

scoreboard players operation @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.gel] 42.obj.portal.lvl = @s 42.obj.portal.lvl
scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @s 42.obj.portal.id

execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.gel] at @s rotated as @e[tag=42.tag.portal.gel.spawner.this,limit=1] run tp @s ~ ~-.5 ~ ~ ~

tag @s remove 42.tag.portal.gel.spawner.this