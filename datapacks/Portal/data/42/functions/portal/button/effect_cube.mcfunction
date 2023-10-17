execute if entity @s[tag=42.portal_btn_on,tag=!42.portal_btn_on2] run playsound minecraft:block.piston.contract block @a ~ ~ ~ .5 .5
execute if entity @s[tag=42.portal_btn_on,tag=!42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis,limit=1] {transformation:{translation:[-.75f,.088f,-.75f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=42.portal_btn_on,tag=!42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis2,limit=1] {transformation:{translation:[.75f,-.05f,-.875f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=42.portal_btn_on,tag=!42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis3,limit=1] {transformation:{translation:[-.875f,-.05f,-.75f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=42.portal_btn_on,tag=!42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis4,limit=1] {transformation:{translation:[-.75f,-.05f,.75f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=42.portal_btn_on,tag=!42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis5,limit=1] {transformation:{translation:[-.875f,-.05f,-.875f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=42.portal_btn_on,tag=!42.portal_btn_on2] run function 42:portal/power
execute if entity @s[tag=!42.portal_btn_on,tag=42.portal_btn_on2] run playsound minecraft:block.piston.extend block @a ~ ~ ~ .5 .5
execute if entity @s[tag=!42.portal_btn_on,tag=42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis,limit=1] {transformation:{translation:[-.75f,.15f,-.75f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=!42.portal_btn_on,tag=42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis2,limit=1] {transformation:{translation:[.75f,.15f,-.875f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=!42.portal_btn_on,tag=42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis3,limit=1] {transformation:{translation:[-.875f,.15f,-.75f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=!42.portal_btn_on,tag=42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis4,limit=1] {transformation:{translation:[-.75f,.15f,.75f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=!42.portal_btn_on,tag=42.portal_btn_on2] run data merge entity @e[tag=42.portal_id,tag=42.portal_btn_dis5,limit=1] {transformation:{translation:[-.875f,.15f,-.875f]},interpolation_duration:2,start_interpolation:-1}
execute if entity @s[tag=!42.portal_btn_on,tag=42.portal_btn_on2] run function 42:portal/unpower