function 42:portal/portal/tag_portals
execute if entity @e[tag=42.tag.portal.temp_tag_portals,tag=42.tag.portal.portal,tag=!42.tag.portal.portal.no_sel] run playsound entity.allay.item_thrown master @a ~ ~ ~ 1.5 1
execute as @e[tag=42.tag.portal.temp_tag_portals,tag=42.tag.portal.portal,tag=!42.tag.portal.portal.no_sel] at @s run function 42:portal/portal/fizzle
tag @e remove 42.tag.portal.temp_tag_portals