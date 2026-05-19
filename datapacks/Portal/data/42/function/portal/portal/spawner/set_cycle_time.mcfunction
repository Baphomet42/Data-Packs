function 42:portal/tag_selected
execute unless entity @e[tag=42.tag.portal.selected,tag=42.tag.portal.portal.spawner] run function 42:portal/tools/sel_error
$scoreboard players set @e[tag=42.tag.portal.selected,tag=42.tag.portal.portal.spawner] 42.obj.portal.cool $(ticks)
execute as @e[tag=42.tag.portal.selected,tag=42.tag.portal.portal.spawner] unless score @s 42.obj.portal.cool matches 40.. run scoreboard players set @s 42.obj.portal.cool 40
execute as @e[tag=42.tag.portal.selected,tag=42.tag.portal.portal.spawner] unless score @s 42.obj.portal.cool matches ..1200 run scoreboard players set @s 42.obj.portal.cool 1200
tag @e remove 42.tag.portal.selected