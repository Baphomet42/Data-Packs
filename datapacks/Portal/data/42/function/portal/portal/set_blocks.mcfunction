function 42:portal/portal/tag_pair
tag @e remove 42.tag.portal.portal.connected
execute if entity @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.a] if entity @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.b] run tag @s add 42.tag.portal.portal.connected

execute as @e[tag=42.tag.portal.portal.wall,tag=42.tag.portal.portal.pair] at @s run function 42:portal/portal/replace_wall

execute if entity @s[tag=42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.pair] if score @s 42.obj.portal.var.y matches 0 if score @s 42.obj.portal.var.x matches 0 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/vertical/s
execute if entity @s[tag=42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.pair] if score @s 42.obj.portal.var.y matches 0 if score @s 42.obj.portal.var.x matches 1 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/vertical/w
execute if entity @s[tag=42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.pair] if score @s 42.obj.portal.var.y matches 0 if score @s 42.obj.portal.var.x matches 2 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/vertical/n
execute if entity @s[tag=42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.pair] if score @s 42.obj.portal.var.y matches 0 if score @s 42.obj.portal.var.x matches 3 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/vertical/e

execute if entity @s[tag=42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.pair] unless score @s 42.obj.portal.var.y matches 0 if score @s 42.obj.portal.var.x matches 0 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/horizontal/s
execute if entity @s[tag=42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.pair] unless score @s 42.obj.portal.var.y matches 0 if score @s 42.obj.portal.var.x matches 1 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/horizontal/w
execute if entity @s[tag=42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.pair] unless score @s 42.obj.portal.var.y matches 0 if score @s 42.obj.portal.var.x matches 2 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/horizontal/n
execute if entity @s[tag=42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.pair] unless score @s 42.obj.portal.var.y matches 0 if score @s 42.obj.portal.var.x matches 3 at @s positioned ^ ^.5 ^ run function 42:portal/portal/set_blocks/horizontal/e

execute if entity @s[tag=!42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.open] run data modify entity @s view_range set value 0f
execute if entity @s[tag=42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.open] run data modify entity @s view_range set value 10f
execute if entity @s[tag=!42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.close] run data modify entity @s view_range set value 10f
execute if entity @s[tag=42.tag.portal.portal.connected] as @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.close] run data modify entity @s view_range set value 0f

tag @e remove 42.tag.portal.portal.pair
tag @s remove 42.tag.portal.portal.connected