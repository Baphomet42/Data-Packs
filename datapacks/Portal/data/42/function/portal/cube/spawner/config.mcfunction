tag @e remove 42.tag.portal.cube.spawner.this
tag @s add 42.tag.portal.cube.spawner.this

scoreboard players operation @e[tag=42.tag.portal.cube.new_spawn,tag=42.tag.portal.cube.main] 42.obj.portal.skin = @s 42.obj.portal.skin
execute if entity @s[tag=42.tag.portal.tool.spawn.turret] run scoreboard players remove @e[tag=42.tag.portal.cube.new_spawn,tag=42.tag.portal.cube.main] 42.obj.portal.skin 1
execute if entity @s[tag=42.tag.portal.tool.spawn.turret] as @e[tag=42.tag.portal.cube.new_spawn,tag=42.tag.portal.cube.main] at @s run function 42:portal/cube/skin
scoreboard players operation @e[tag=42.tag.portal.cube.new_spawn,tag=42.tag.portal.cube.main] 42.obj.portal.lvl = @s 42.obj.portal.lvl
scoreboard players operation @e[tag=42.tag.portal.cube.new_spawn] 42.obj.portal.id = @s 42.obj.portal.id

execute if entity @s[tag=42.tag.portal.cube.spawner.turret.off] as @e[tag=42.tag.portal.cube.new_spawn,tag=42.tag.portal.cube.main,tag=42.tag.portal.turret,limit=1] at @s run function 42:portal/cube/turret/toggle/on
execute if entity @s[tag=42.tag.portal.cube.spawner.turret.nofind] run tag @e[tag=42.tag.portal.cube.new_spawn,tag=42.tag.portal.cube.main,tag=42.tag.portal.turret,limit=1] add 42.tag.portal.turret.nofind
execute if entity @s[tag=42.tag.portal.cube.spawner.turret.always_on] run tag @e[tag=42.tag.portal.cube.new_spawn,tag=42.tag.portal.cube.main,tag=42.tag.portal.turret,limit=1] add 42.tag.portal.turret.always_on
execute if entity @s[tag=42.tag.portal.cube.spawner.turret.oracle] as @e[tag=42.tag.portal.cube.new_spawn,tag=42.tag.portal.cube.main,tag=42.tag.portal.turret,limit=1] at @s run function 42:portal/cube/turret/toggle/oracle
execute if entity @s[tag=42.tag.portal.tool.spawn.turret] as @e[tag=42.tag.portal.cube.new_spawn,tag=42.tag.portal.cube.dis] at @s rotated as @e[tag=42.tag.portal.cube.spawner.this,limit=1] run rotate @s ~ ~

execute if entity @s[tag=42.tag.portal.tool.spawn.radio] as @e[tag=42.tag.portal.cube.new_spawn,tag=42.tag.portal.cube.dis] at @s rotated as @e[tag=42.tag.portal.cube.spawner.this,limit=1] run rotate @s ~ ~

execute if entity @s[tag=42.tag.portal.tool.spawn.cube.laser] as @e[tag=42.tag.portal.cube.new_spawn,tag=42.tag.portal.cube.dis] at @s rotated as @e[tag=42.tag.portal.cube.spawner.this,limit=1] run rotate @s ~ ~

tag @s remove 42.tag.portal.cube.spawner.this