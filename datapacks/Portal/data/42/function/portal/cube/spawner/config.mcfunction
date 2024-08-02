tag @e remove 42.portal_cube_spawner_this
tag @s add 42.portal_cube_spawner_this

scoreboard players operation @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp] 42.portal_skin = @s 42.portal_skin
execute if entity @s[tag=42.portal_spawn_turret] run scoreboard players remove @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp] 42.portal_skin 1
execute if entity @s[tag=42.portal_spawn_turret] as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp] at @s run function 42:portal/cube/skin
scoreboard players operation @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp] 42.portal_lvl = @s 42.portal_lvl
scoreboard players operation @e[tag=42.portal_cube_spawn] 42.portal_id = @s 42.portal_id

execute if entity @s[tag=42.portal_cube_spawner_turret_off] run execute as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp,tag=42.portal_turret,limit=1] at @s run function 42:portal/cube/turret/toggle/on
execute if entity @s[tag=42.portal_cube_spawner_turret_nofind] run tag @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp,tag=42.portal_turret,limit=1] add 42.portal_turret_nofind
execute if entity @s[tag=42.portal_cube_spawner_turret_always_on] run tag @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp,tag=42.portal_turret,limit=1] add 42.portal_turret_always_on
execute if entity @s[tag=42.portal_cube_spawner_turret_oracle] run execute as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp,tag=42.portal_turret,limit=1] at @s run function 42:portal/cube/turret/toggle/oracle
execute if entity @s[tag=42.portal_spawn_turret] as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_dis] at @s rotated as @e[tag=42.portal_cube_spawner_this,limit=1] run tp @s ~ ~ ~ ~ ~

execute if entity @s[tag=42.portal_spawn_radio] as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_dis] at @s rotated as @e[tag=42.portal_cube_spawner_this,limit=1] run tp @s ~ ~ ~ ~ ~

execute if entity @s[tag=42.portal_spawn_cube3] as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_dis] at @s rotated as @e[tag=42.portal_cube_spawner_this,limit=1] run tp @s ~ ~ ~ ~ ~

tag @s remove 42.portal_cube_spawner_this