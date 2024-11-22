tag @s remove 42.portal.cube.level_freeze
data modify entity @s NoAI set value 0b
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1] if function 42:portal/cube/interact_test at @s run data remove entity @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1] interaction