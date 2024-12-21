tag @e remove 42.tag.portal.id
execute on vehicle run tag @s add 42.tag.portal.id
execute on vehicle on passengers run tag @s add 42.tag.portal.id

execute on vehicle run tag @s add 42.tag.portal.temp
execute on target at @s anchored eyes positioned ^-.4 ^-.5 ^.8 run tp @e[tag=42.tag.portal.id,tag=42.tag.portal.gun_display.group_vehicle] ~ ~ ~
execute on target at @s as @e[tag=42.tag.portal.id] run rotate @s ~ ~
execute on target if items entity @s weapon.mainhand *[custom_data~{42data:{portal:{portal_gun:{}}}}] run tag @e[tag=42.tag.portal.temp] remove 42.tag.portal.temp
execute on vehicle if entity @s[tag=42.tag.portal.temp] run function 42:portal/gun/display/fizzle

tag @e remove 42.tag.portal.id