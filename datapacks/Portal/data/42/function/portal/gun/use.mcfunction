tag @e remove 42.tag.portal.temp
summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.gun.projectile","42.tag.portal.tags.has_tick","42.tag.portal.temp","42.tag.portal.bullet_pass"],CustomNameVisible:false,CustomName:"42portal"}
execute if entity @s[tag=42.tag.portal.gun.arg_a] run tag @e[tag=42.tag.portal.temp,limit=1] add 42.tag.portal.gun.a
execute if entity @s[tag=!42.tag.portal.gun.arg_a] run tag @e[tag=42.tag.portal.temp,limit=1] add 42.tag.portal.gun.b

# keep consistent with gun/particle, gun/setup_look, gun/use, portal/particle, portal/set_name, portal/set_color_dis, portal/set_back_color_dis, portal/skin
scoreboard players operation @e[tag=42.tag.portal.temp,limit=1] 42.obj.portal.skin = #42.var.portal.gun_use_temp 42.obj.portal.skin
execute as @e[tag=42.tag.portal.temp,limit=1] unless score @s 42.obj.portal.skin matches 0..16 run scoreboard players set @s 42.obj.portal.skin 0

scoreboard players operation @e[tag=42.tag.portal.temp,limit=1] 42.obj.portal.link = #42.var.portal.gun_use_temp 42.obj.portal.link
execute as @e[tag=42.tag.portal.temp,limit=1] unless score @s 42.obj.portal.link matches 1.. run scoreboard players set @s 42.obj.portal.link 1

tp @e[tag=42.tag.portal.temp] ~ ~ ~ ~ ~
scoreboard players operation @e[type=marker,tag=42.tag.portal.temp,limit=1] 42.obj.portal.id = #42.var.portal.gun_use_temp 42.obj.portal.id
execute if entity @s[y_rotation=-45..45] run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.nn
execute unless entity @e[tag=42.tag.portal.temp,tag=42.tag.portal.nn] if entity @s[y_rotation=45..135] run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.ee
execute unless entity @e[tag=42.tag.portal.temp,tag=42.tag.portal.nn] unless entity @e[tag=42.tag.portal.temp,tag=42.tag.portal.ee] if entity @s[y_rotation=135..225] run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.ss
execute unless entity @e[tag=42.tag.portal.temp,tag=42.tag.portal.nn] unless entity @e[tag=42.tag.portal.temp,tag=42.tag.portal.ee] unless entity @e[tag=42.tag.portal.temp,tag=42.tag.portal.ss] if entity @s[y_rotation=225..315] run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.ww
execute if entity @s[tag=42.tag.portal.portal.spawner] run function 42:portal/portal/spawner/rotate_gun
execute if entity @s[tag=42.tag.portal.portal.spawner] run tag @e[tag=42.tag.portal.temp,tag=42.tag.portal.gun.projectile] add 42.tag.portal.gun.no_sel
execute if entity @s[tag=42.tag.portal.portal.spawner] run scoreboard players operation @e[tag=42.tag.portal.temp,tag=42.tag.portal.gun.projectile] 42.obj.portal.lvl = @s 42.obj.portal.lvl
tag @e remove 42.tag.portal.temp