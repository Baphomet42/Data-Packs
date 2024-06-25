tag @e remove 42.portal_id
execute on vehicle run tag @s add 42.portal_id
execute on vehicle on passengers run tag @s add 42.portal_id

execute on vehicle run tag @s add 42.portal_temp
execute on target at @s anchored eyes positioned ^-.4 ^-.5 ^.8 run tp @e[tag=42.portal_id] ~ ~ ~ ~ ~
execute on target if items entity @s weapon.mainhand *[custom_data~{portal_gun:{}}] run tag @e[tag=42.portal_temp] remove 42.portal_temp
execute on vehicle if entity @s[tag=42.portal_temp] run function 42:portal/gun/display/fizzle

tag @e remove 42.portal_id