function 42:portal/tag_selected
execute as @e[tag=42.tag.portal.selected,type=!player,limit=1] at @s run function 42:portal/tools/sel_tick
execute unless entity @e[tag=42.tag.portal.selected,type=!player,limit=1] if entity @s[tag=42.tag.portal.sel_missing] run scoreboard players set @s 42.obj.portal.sel 0
execute unless entity @e[tag=42.tag.portal.selected,type=!player,limit=1] if entity @s[tag=42.tag.portal.sel_missing] run tag @s remove 42.tag.portal.sel_missing
execute unless entity @e[tag=42.tag.portal.selected,type=!player,limit=1] if score @s 42.obj.portal.sel matches 1.. run tag @s add 42.tag.portal.sel_missing
execute unless entity @e[tag=42.tag.portal.selected,type=!player,limit=1] run title @s actionbar [{text:"Selection Lost",color:"red"}]
tag @e remove 42.tag.portal.selected