function 42:portal/tag_id
tag @e remove 42.tag.portal.turret.laser
summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.turret.laser","42.tag.portal.turret.laser_dis","42.tag.portal.bullet_pass"]}
execute at @e[tag=42.tag.portal.turret.eye,tag=42.tag.portal.id] positioned ^ ^1 ^.25 run tp @e[tag=42.tag.portal.turret.laser] ~ ~ ~ ~ ~
scoreboard players set @e[tag=42.tag.portal.turret.laser] 42.obj.portal.time 50
execute as @e[tag=42.tag.portal.turret.laser] at @s run function 42:portal/cube/turret/target/laser_move_dis_idle
kill @e[tag=42.tag.portal.turret.laser]

tag @e remove 42.tag.portal.id