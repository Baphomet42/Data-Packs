function 42:portal/portal/tag_pair
tag @e remove 42.portal_connected
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] run tag @s add 42.portal_connected

execute as @e[tag=42.portal_wall,tag=42.portal_pair] at @s run function 42:portal/portal/replace_wall

execute if entity @s[tag=42.portal_connected] as @e[tag=42.portal,tag=42.portal_pair] if score @s 42.portal_y matches 0 if score @s 42.portal_x matches 0 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/vertical/s
execute if entity @s[tag=42.portal_connected] as @e[tag=42.portal,tag=42.portal_pair] if score @s 42.portal_y matches 0 if score @s 42.portal_x matches 1 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/vertical/w
execute if entity @s[tag=42.portal_connected] as @e[tag=42.portal,tag=42.portal_pair] if score @s 42.portal_y matches 0 if score @s 42.portal_x matches 2 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/vertical/n
execute if entity @s[tag=42.portal_connected] as @e[tag=42.portal,tag=42.portal_pair] if score @s 42.portal_y matches 0 if score @s 42.portal_x matches 3 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/vertical/e

execute if entity @s[tag=42.portal_connected] as @e[tag=42.portal,tag=42.portal_pair] unless score @s 42.portal_y matches 0 if score @s 42.portal_x matches 0 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/horizontal/s
execute if entity @s[tag=42.portal_connected] as @e[tag=42.portal,tag=42.portal_pair] unless score @s 42.portal_y matches 0 if score @s 42.portal_x matches 1 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/horizontal/w
execute if entity @s[tag=42.portal_connected] as @e[tag=42.portal,tag=42.portal_pair] unless score @s 42.portal_y matches 0 if score @s 42.portal_x matches 2 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/horizontal/n
execute if entity @s[tag=42.portal_connected] as @e[tag=42.portal,tag=42.portal_pair] unless score @s 42.portal_y matches 0 if score @s 42.portal_x matches 3 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/horizontal/e

execute if entity @s[tag=!42.portal_connected] as @e[tag=42.portal_pair,tag=42.portal_open] run data modify entity @s view_range set value 0f
execute if entity @s[tag=42.portal_connected] as @e[tag=42.portal_pair,tag=42.portal_open] run data modify entity @s view_range set value 10f
execute if entity @s[tag=!42.portal_connected] as @e[tag=42.portal_pair,tag=42.portal_close] run data modify entity @s view_range set value 10f
execute if entity @s[tag=42.portal_connected] as @e[tag=42.portal_pair,tag=42.portal_close] run data modify entity @s view_range set value 0f

tag @e remove 42.portal_pair
tag @s remove 42.portal_connected