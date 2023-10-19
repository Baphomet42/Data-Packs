function 42:portal/set_id
tag @e remove 42.portal_temp
scoreboard players set @s 42.portal_temp 0
execute if entity @s[tag=42.portal_cube_held] positioned ~-.5 ~ ~-.5 unless entity @e[tag=42.portal_cube_tp,tag=!42.portal_turret,tag=!42.portal_id,dx=0,dy=0,dz=0] run function 42:portal/cube/hold_test
execute if entity @s[tag=42.portal_cube_held] if score @s 42.portal_temp matches 1 run tag @s add 42.portal_temp
execute if entity @s[tag=42.portal_temp] on target unless score @s 42.portal_id = @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1] 42.portal_id run tag @e[tag=42.portal_temp] remove 42.portal_temp
tag @s add 42.portal_cube_held
tag @s[tag=42.portal_temp] remove 42.portal_cube_held
tag @e remove 42.portal_temp
execute if entity @s[tag=42.portal_cube_held] on target if score @s 42.portal_id matches 0 run scoreboard players set @a[tag=42.portal_id] 42.portal_id 0
execute if entity @s[tag=42.portal_cube_held] on target if score @s 42.portal_id matches 0 run scoreboard players operation @s 42.portal_id = @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1] 42.portal_id
execute if entity @s[tag=42.portal_cube_held] run tag @s remove 42.portal_motion_tp
execute if entity @s[tag=!42.portal_cube_held] on target if score @s 42.portal_id = @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1] 42.portal_id run scoreboard players set @s 42.portal_id 0
function 42:portal/tag_id
data remove entity @s interaction