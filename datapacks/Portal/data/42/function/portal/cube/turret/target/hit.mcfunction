damage @s .00001 generic_kill by @e[tag=42.portal_id,tag=42.portal_cube_tp,limit=1]
tag @s add 42.portal_damage
scoreboard players add @s 42.portal_damage 1
execute if score @s 42.portal_damage matches 100.. run scoreboard players remove @s 42.portal_damage 1
execute if score @s 42.portal_damage matches ..200 run scoreboard players add @s 42.portal_damage 45
execute if score @s 42.portal_damage matches 100.. run damage @s 500 arrow by @e[tag=42.portal_id,tag=42.portal_cube_tp,limit=1]
execute if score @s 42.portal_damage matches 100.. run scoreboard players set @s 42.portal_damage 0