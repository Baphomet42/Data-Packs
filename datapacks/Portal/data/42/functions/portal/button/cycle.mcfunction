tag @e remove 42.portal_temp
tag @s[tag=42.portal_btn_cube] add 42.portal_temp
tag @s add 42.portal_btn_cube
tag @s[tag=42.portal_temp] remove 42.portal_btn_cube
tag @e remove 42.portal_temp
function 42:portal/tag_id
execute if entity @s[tag=!42.portal_btn_cube] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis,limit=1] {transformation:{translation:[-.875f,.4f,-.875f],scale:[1.75f,.1f,1.75f]},interpolation_duration:0,start_interpolation:-1}
execute if entity @s[tag=!42.portal_btn_cube] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis2,limit=1] {transformation:{translation:[-.6f,0f,-.6f],scale:[1.2f,.4f,1.2f]},interpolation_duration:0,start_interpolation:-1}
execute if entity @s[tag=!42.portal_btn_cube] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis3,limit=1] {block_state:{Name:air}}
execute if entity @s[tag=!42.portal_btn_cube] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis4,limit=1] {block_state:{Name:air}}
execute if entity @s[tag=!42.portal_btn_cube] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis5,limit=1] {block_state:{Name:air}}
execute if entity @s[tag=42.portal_btn_cube] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis,limit=1] {transformation:{translation:[-.75f,0f,-.75f],scale:[1.5f,.25f,1.5f]},interpolation_duration:0,start_interpolation:-1}
execute if entity @s[tag=42.portal_btn_cube] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis2,limit=1] {transformation:{translation:[.75f,0f,-.875f],scale:[.125f,.625f,1.625f]},interpolation_duration:0,start_interpolation:-1}
execute if entity @s[tag=42.portal_btn_cube] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis3,limit=1] {block_state:{Name:redstone_block}}
execute if entity @s[tag=42.portal_btn_cube] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis4,limit=1] {block_state:{Name:redstone_block}}
execute if entity @s[tag=42.portal_btn_cube] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis5,limit=1] {block_state:{Name:redstone_block}}
tag @e remove 42.portal_id