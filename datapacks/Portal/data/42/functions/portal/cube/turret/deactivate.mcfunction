tag @s add 42.portal_turret_off
tag @s remove 42.portal_turret_malfunction
scoreboard players set @s 42.portal_w 0
function 42:portal/tag_id
data merge entity @e[tag=42.portal_id,tag=42.portal_turret_eye,limit=1] {block_state:{Name:black_shulker_box}}
execute if entity @s[tag=42.portal_turret_open] run function 42:portal/cube/turret/arms/close
tag @e remove 42.portal_id