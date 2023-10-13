playsound minecraft:entity.iron_golem.repair block @a ~ ~ ~ 1.25 1.4
tag @e remove 42.portal_temp
summon marker ~ ~ ~ {Tags:["42.portal_gun","42.portal_temp","42.portal_gun_orange"]}
scoreboard players set @e[type=!player,tag=42.portal_temp] 42.datapack 3
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=42.portal_temp] ~ ~ ~ ~ ~
execute store result score @e[type=marker,tag=42.portal_temp,limit=1] 42.portal_id run data get entity @s UUID[0]
execute if entity @s[y_rotation=-45..45] run tag @e[tag=42.portal_temp] add 42.portal_nn
execute unless entity @e[tag=42.portal_temp,tag=42.portal_nn] if entity @s[y_rotation=45..135] run tag @e[tag=42.portal_temp] add 42.portal_ee
execute unless entity @e[tag=42.portal_temp,tag=42.portal_nn] unless entity @e[tag=42.portal_temp,tag=42.portal_ee] if entity @s[y_rotation=135..225] run tag @e[tag=42.portal_temp] add 42.portal_ss
execute unless entity @e[tag=42.portal_temp,tag=42.portal_nn] unless entity @e[tag=42.portal_temp,tag=42.portal_ee] unless entity @e[tag=42.portal_temp,tag=42.portal_ss] if entity @s[y_rotation=225..315] run tag @e[tag=42.portal_temp] add 42.portal_ww
tag @e remove 42.portal_temp