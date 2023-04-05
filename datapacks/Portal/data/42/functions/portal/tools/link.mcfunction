execute if entity @e[scores={42.portal_link=-1}] run scoreboard players add 42.portal 42.portal_link 1
execute if entity @e[scores={42.portal_link=-1}] run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.4
scoreboard players operation @e[scores={42.portal_link=-1}] 42.portal_link = 42.portal 42.portal_link
execute as @e[scores={42.portal_link=1..}] at @s if score @s 42.portal_link = 42.portal 42.portal_link run summon area_effect_cloud ~ ~ ~ {Duration:30,DurationOnUse:0,Particle:"flash",Radius:.25d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0}
kill @s[type=area_effect_cloud]