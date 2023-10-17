execute if entity @s[tag=42.portal_btn_on,tag=!42.portal_btn_on2] run playsound minecraft:block.piston.contract block @a ~ ~ ~ .5 .5
execute if entity @s[tag=42.portal_btn_on,tag=!42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis,limit=1] {transformation:{translation:[-.875f,.16f,-.875f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=42.portal_btn_on,tag=!42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis2,limit=1] {transformation:{translation:[-.6f,-.09f,-.6f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=42.portal_btn_on,tag=!42.portal_btn_on2] run function 42:portal/power
execute if entity @s[tag=!42.portal_btn_on,tag=42.portal_btn_on2] run playsound minecraft:block.piston.extend block @a ~ ~ ~ .5 .5
execute if entity @s[tag=!42.portal_btn_on,tag=42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis,limit=1] {transformation:{translation:[-.875f,.4f,-.875f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=!42.portal_btn_on,tag=42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis2,limit=1] {transformation:{translation:[-.6f,.15f,-.6f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=!42.portal_btn_on,tag=42.portal_btn_on2] run function 42:portal/unpower