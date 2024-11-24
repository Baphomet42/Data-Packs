tag @s remove 42.tag.portal.cube.level_freeze
data modify entity @s NoAI set value 0b
execute as @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,limit=1] if function 42:portal/cube/interact_test at @s run data remove entity @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,limit=1] interaction