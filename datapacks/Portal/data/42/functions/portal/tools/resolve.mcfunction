tag @e remove 42.portal_resolve
tag @e remove 42.portal_temp
$data remove entity @s $(tag)
execute at @s if block ~ ~ ~ air run tag @s add 42.portal_temp
execute at @s if entity @s[tag=42.portal_temp] run setblock ~ ~ ~ birch_wall_sign
$execute at @s if entity @s[tag=42.portal_temp] run data modify block ~ ~ ~ front_text.messages[0] set value $(text)
$execute at @s if entity @s[tag=42.portal_temp] run data modify entity @s $(tag) set from block ~ ~ ~ front_text.messages[0]
execute if entity @s[tag=42.portal_temp] run tag @s add 42.portal_resolve
execute at @s if entity @s[tag=42.portal_temp] run setblock ~ ~ ~ air
tag @s remove 42.portal_temp