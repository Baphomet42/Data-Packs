tag @e remove 42.portal_id
#
scoreboard players operation @e[scores={42.portal_id=1..}] 42.portal_temp = @s 42.portal_id
execute as @e[scores={42.portal_id=1..}] run scoreboard players operation @s 42.portal_temp -= @s 42.portal_id
execute as @e[scores={42.portal_id=1..,42.portal_temp=0}] run tag @s add 42.portal_id
#
scoreboard players operation @e[scores={42.portal_id=..-1}] 42.portal_temp = @s 42.portal_id
execute as @e[scores={42.portal_id=..-1}] run scoreboard players operation @s 42.portal_temp -= @s 42.portal_id
execute as @e[scores={42.portal_id=..-1,42.portal_temp=0}] run tag @s add 42.portal_id
#