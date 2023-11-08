function 42:portal/portal/tag_portals
execute if entity @e[tag=42.portal_id,tag=42.portal,tag=!42.portal_no_sel] run playsound entity.allay.item_thrown master @a ~ ~ ~ 1.5 1
execute as @e[tag=42.portal_id,tag=42.portal,tag=!42.portal_no_sel] at @s run function 42:portal/portal/fizzle
tag @e remove 42.portal_id