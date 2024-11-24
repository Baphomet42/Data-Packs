damage @s .00001 generic_kill by @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.tp,limit=1]
tag @s add 42.tag.portal.damage
scoreboard players add @s 42.obj.portal.damage 1
execute if score @s 42.obj.portal.damage matches 100.. run scoreboard players remove @s 42.obj.portal.damage 1
execute if score @s 42.obj.portal.damage matches ..200 run scoreboard players add @s 42.obj.portal.damage 45
execute if score @s 42.obj.portal.damage matches 100.. run damage @s 500 arrow by @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.tp,limit=1]
execute if score @s 42.obj.portal.damage matches 100.. run scoreboard players set @s 42.obj.portal.damage 0