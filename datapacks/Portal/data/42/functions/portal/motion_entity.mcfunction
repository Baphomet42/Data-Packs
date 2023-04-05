scoreboard players add @s[scores={42.portal_cool=0..}] 42.portal_cool 1
scoreboard players remove @s[scores={42.portal_cool=..-1}] 42.portal_cool 1
execute store result entity @s[scores={42.portal_cool=0..}] Motion[0] double .001 run scoreboard players get @s 42.portal_x
execute store result entity @s[scores={42.portal_cool=0..}] Motion[2] double .001 run scoreboard players get @s 42.portal_z
execute if score @s 42.portal_cool matches 0.. run effect give @s resistance 1 127 true
execute unless entity @e[tag=42.portal,distance=..1] run scoreboard players set @s[nbt={OnGround:1b},scores={42.portal_cool=10..}] 42.portal_cool -1
tag @s[scores={42.portal_cool=..-5}] remove 42.portal_motion_tp