tag @e remove 42.tag.portal.new_spawn
summon area_effect_cloud ~ ~ ~ {Duration:15,DurationOnUse:0,Particle:{type:"block",block_state:{Name:"minecraft:air"}},Radius:.1d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.tag.summon","42.tag.portal.turret.fire","42.tag.portal.new_spawn"]}
scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @s 42.obj.portal.id
execute if entity @a[tag=42.tag.portal.turret.target_current,gamemode=creative] run tag @e[tag=42.tag.portal.new_spawn] add 42.tag.portal.turret.fire_noshoot
execute as @e[tag=42.tag.portal.turret.target_current,limit=1,sort=nearest] at @s unless entity @s[gamemode=creative] run function 42:portal/cube/turret/target/hit
tag @e remove 42.tag.portal.new_spawn
execute if score @s 42.obj.portal.var.v matches ..50 run scoreboard players set @s 42.obj.portal.var.v 50
execute if entity @s[tag=!42.tag.portal.turret.open] run function 42:portal/cube/turret/arms/open