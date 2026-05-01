tag @s add 42.tag.xltt.odm.lev
function 42:xltt/match_id
tag @e[predicate=42:xltt/match_id] add 42.tag.xltt.id
tag @e[tag=!42.tag.xltt.odm.hit] remove 42.tag.xltt.id

tag @s remove 42.tag.xltt.odm.fly
execute at @s facing entity @e[tag=42.tag.xltt.id,limit=1,sort=nearest,distance=2.5..] feet positioned ^ ^ ^.2 if block ~-.35 ~0.0 ~-.35 #42:projectile_pass if block ~-.35 ~0.0 ~.35 #42:projectile_pass if block ~.35 ~0.0 ~-.35 #42:projectile_pass if block ~.35 ~0.0 ~.35 #42:projectile_pass if block ~-.35 ~.9 ~-.35 #42:projectile_pass if block ~-.35 ~.9 ~.35 #42:projectile_pass if block ~.35 ~.9 ~-.35 #42:projectile_pass if block ~.35 ~.9 ~.35 #42:projectile_pass if block ~-.35 ~1.85 ~-.35 #42:projectile_pass if block ~-.35 ~1.85 ~.35 #42:projectile_pass if block ~.35 ~1.85 ~-.35 #42:projectile_pass if block ~.35 ~1.85 ~.35 #42:projectile_pass run tag @s add 42.tag.xltt.odm.fly

execute at @s[tag=42.tag.xltt.odm.fly] run playsound entity.cat.hiss player @a ~ ~ ~ .85 1.85
execute at @s[tag=42.tag.xltt.odm.fly] run playsound item.spyglass.use player @a ~ ~ ~ 4 1.5
attribute @s[tag=42.tag.xltt.odm.fly] minecraft:gravity modifier add 42:xltt/odm/gravity -1 add_multiplied_total
tag @s[tag=42.tag.xltt.odm.fly] add 42.tag.xltt.odm.air_drag_modifier
attribute @s[tag=42.tag.xltt.odm.fly] minecraft:air_drag_modifier modifier add 42:xltt/odm/air_drag_modifier -.75 add_multiplied_total
effect give @s[tag=42.tag.xltt.odm.fly] slow_falling 1 0 true

tag @e remove 42.tag.xltt.odm.col
function 42:xltt/odm/detect_titan
scoreboard players set @s[tag=42.tag.xltt.odm.fly,tag=!42.tag.xltt.odm.col] 42.obj.xltt.odm_motion 1
tag @s[tag=42.tag.xltt.odm.fly,tag=!42.tag.xltt.odm.col] add 42.tag.xltt.odm.sound
tag @e remove 42.tag.xltt.odm.col

execute at @s positioned ~ ~1.25 ~ at @e[tag=42.tag.xltt.id,limit=1,sort=nearest,distance=..1] positioned ~ ~.25 ~ if block ~-.35 ~0.0 ~-.35 #42:projectile_pass if block ~-.35 ~0.0 ~.35 #42:projectile_pass if block ~.35 ~0.0 ~-.35 #42:projectile_pass if block ~.35 ~0.0 ~.35 #42:projectile_pass if block ~-.35 ~.9 ~-.35 #42:projectile_pass if block ~-.35 ~.9 ~.35 #42:projectile_pass if block ~.35 ~.9 ~-.35 #42:projectile_pass if block ~.35 ~.9 ~.35 #42:projectile_pass if block ~-.35 ~1.85 ~-.35 #42:projectile_pass if block ~-.35 ~1.85 ~.35 #42:projectile_pass if block ~.35 ~1.85 ~-.35 #42:projectile_pass if block ~.35 ~1.85 ~.35 #42:projectile_pass run tag @s add 42.tag.xltt.odm.tp
execute at @s positioned ~ ~1 ~ at @e[tag=42.tag.xltt.id,limit=1,sort=nearest,distance=..1] positioned ~ ~.25 ~ if block ~-.35 ~0.0 ~-.35 #42:projectile_pass if block ~-.35 ~0.0 ~.35 #42:projectile_pass if block ~.35 ~0.0 ~-.35 #42:projectile_pass if block ~.35 ~0.0 ~.35 #42:projectile_pass if block ~-.35 ~.9 ~-.35 #42:projectile_pass if block ~-.35 ~.9 ~.35 #42:projectile_pass if block ~.35 ~.9 ~-.35 #42:projectile_pass if block ~.35 ~.9 ~.35 #42:projectile_pass if block ~-.35 ~1.85 ~-.35 #42:projectile_pass if block ~-.35 ~1.85 ~.35 #42:projectile_pass if block ~.35 ~1.85 ~-.35 #42:projectile_pass if block ~.35 ~1.85 ~.35 #42:projectile_pass run tag @s add 42.tag.xltt.odm.tp

execute at @s[tag=42.tag.xltt.odm.tp] at @e[tag=42.tag.xltt.id,limit=1,sort=nearest,distance=..4] positioned ~ ~.25 ~ rotated as @s run tp ~ ~ ~
execute if entity @s[tag=42.tag.xltt.odm.tp] at @s run playsound entity.player.small_fall player @s ~ ~ ~ .25 .75
execute if entity @s[tag=42.tag.xltt.odm.tp] run function 42:xltt/odm/cancel

execute at @s[tag=42.tag.xltt.odm.fly] facing entity @e[tag=42.tag.xltt.id,limit=1,sort=nearest] feet positioned ~ ~.7 ~ run particle poof ^-.4 ^ ^-.75 0 0 0 0 1 force
execute at @s[tag=42.tag.xltt.odm.fly] facing entity @e[tag=42.tag.xltt.id,limit=1,sort=nearest] feet positioned ~ ~.7 ~ run particle poof ^.4 ^ ^-.75 0 0 0 0 1 force

tag @e remove 42.tag.xltt.id