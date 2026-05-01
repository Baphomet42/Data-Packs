tag @e remove 42.tag.portal.temp1
tag @s[tag=42.tag.portal.btn.cube] add 42.tag.portal.temp1
tag @s add 42.tag.portal.btn.cube
tag @s[tag=42.tag.portal.temp1] remove 42.tag.portal.btn.cube
tag @e remove 42.tag.portal.temp1
function 42:portal/tag_id
execute if entity @s[tag=!42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.btn.dis,limit=1] {transformation:{translation:[-.875f,.4f,-.875f],scale:[1.75f,.1f,1.75f]},interpolation_duration:0,start_interpolation:-1}
execute if entity @s[tag=!42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.btn.dis2,limit=1] {transformation:{translation:[-.6f,.15f,-.6f],scale:[1.2f,.25f,1.2f]},interpolation_duration:0,start_interpolation:-1}
execute if entity @s[tag=!42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.btn.dis3,limit=1] {block_state:{Name:"minecraft:air"}}
execute if entity @s[tag=!42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.btn.dis4,limit=1] {block_state:{Name:"minecraft:air"}}
execute if entity @s[tag=!42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.btn.dis5,limit=1] {block_state:{Name:"minecraft:air"}}
execute if entity @s[tag=42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.btn.dis,limit=1] {transformation:{translation:[-.75f,.15f,-.75f],scale:[1.5f,.10f,1.5f]},interpolation_duration:0,start_interpolation:-1}
execute if entity @s[tag=42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.btn.dis2,limit=1] {transformation:{translation:[.75f,.15f,-.875f],scale:[.125f,.475f,1.625f]},interpolation_duration:0,start_interpolation:-1}
execute if entity @s[tag=42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.btn.dis3,limit=1] {block_state:{Name:"minecraft:redstone_block"}}
execute if entity @s[tag=42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.btn.dis4,limit=1] {block_state:{Name:"minecraft:redstone_block"}}
execute if entity @s[tag=42.tag.portal.btn.cube] run data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.btn.dis5,limit=1] {block_state:{Name:"minecraft:redstone_block"}}
tag @e remove 42.tag.portal.id