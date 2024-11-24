tag @e remove 42.tag.portal.temp

execute as @p[tag=42.tag.portal.selected] at @s run tag @e[type=!player,tag=!42.tag.portal.zone,tag=!42.tag.portal.portal.group,tag=!42.tag.portal.wire,limit=1,sort=nearest,distance=..10,scores={42.obj.portal.link=1..}] add 42.tag.portal.temp
scoreboard players operation @s 42.obj.portal.xrot1 = @e[tag=42.tag.portal.temp,limit=1] 42.obj.portal.link
execute as @e[tag=42.tag.portal.temp] at @s run particle flash ~ ~ ~
execute as @e[tag=42.tag.portal.temp] at @s run playsound block.note_block.pling block @a ~ ~ ~ 1 1.25
execute unless entity @e[tag=42.tag.portal.temp] run title @p[tag=42.tag.portal.selected] title ""
execute unless entity @e[tag=42.tag.portal.temp] run title @p[tag=42.tag.portal.selected] subtitle {"text":"No linked equipment in range","color":"red"}

tag @e remove 42.tag.portal.temp