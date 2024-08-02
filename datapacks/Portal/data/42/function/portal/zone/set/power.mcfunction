tag @e remove 42.portal_temp

execute as @p[tag=42.portal_selected] at @s run tag @e[type=!player,tag=!42.portal_zone,tag=!42.portal_group,tag=!42.portal_wire,limit=1,sort=nearest,distance=..10,scores={42.portal_link=1..}] add 42.portal_temp
scoreboard players operation @s 42.portal_xrot1 = @e[tag=42.portal_temp,limit=1] 42.portal_link
execute as @e[tag=42.portal_temp] at @s run particle flash ~ ~ ~
execute as @e[tag=42.portal_temp] at @s run playsound block.note_block.pling block @a ~ ~ ~ 1 1.25
execute unless entity @e[tag=42.portal_temp] run title @p[tag=42.portal_selected] title ""
execute unless entity @e[tag=42.portal_temp] run title @p[tag=42.portal_selected] subtitle {"text":"No linked equipment in range","color":"red"}

tag @e remove 42.portal_temp