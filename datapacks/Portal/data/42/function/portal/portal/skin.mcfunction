function 42:portal/portal/tag_pair
scoreboard players add @s 42.obj.portal.skin 1
# keep consistent with gun/particle, gun/setup_look, gun/use, portal/particle, portal/set_name, portal/set_color_dis, portal/set_back_color_dis, portal/skin
execute unless score @s 42.obj.portal.skin matches 0..16 run scoreboard players set @s 42.obj.portal.skin 0
execute if entity @s[tag=42.tag.portal.portal.a] run scoreboard players add @e[tag=42.tag.portal.portal.a,tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.dis] 42.obj.portal.skin 1
execute if entity @s[tag=42.tag.portal.portal.a] run execute as @e[tag=42.tag.portal.portal.a,tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.dis] if score @s 42.obj.portal.skin matches 16.. run scoreboard players set @s 42.obj.portal.skin 0
execute if entity @s[tag=42.tag.portal.portal.a] unless entity @e[tag=42.tag.portal.portal.b,tag=42.tag.portal.portal.pair] run execute as @e[tag=42.tag.portal.portal.a,tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.dis] run function 42:portal/portal/set_back_color_dis
execute if entity @s[tag=42.tag.portal.portal.b] run scoreboard players add @e[tag=42.tag.portal.portal.b,tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.dis] 42.obj.portal.skin 1
execute if entity @s[tag=42.tag.portal.portal.b] run execute as @e[tag=42.tag.portal.portal.b,tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.dis] if score @s 42.obj.portal.skin matches 16.. run scoreboard players set @s 42.obj.portal.skin 0
execute if entity @s[tag=42.tag.portal.portal.b] unless entity @e[tag=42.tag.portal.portal.a,tag=42.tag.portal.portal.pair] run execute as @e[tag=42.tag.portal.portal.b,tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.dis] run function 42:portal/portal/set_back_color_dis
function 42:portal/portal/set_color_dis
function 42:portal/portal/set_name
tag @e remove 42.tag.portal.portal.pair