setblock ~ ~ ~ air
scoreboard players set @s 42.portal_time 0
function 42:portal/unpower
function 42:portal/tag_id
kill @e[tag=42.portal_id,tag=42.portal_pedestal_group]
tag @e remove 42.portal_id