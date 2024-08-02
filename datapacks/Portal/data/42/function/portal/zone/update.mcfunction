function 42:portal/tag_id

execute if score @s 42.portal_lvl matches ..0 as @e[tag=42.portal_id,tag=42.portal_zone_lbl_lvl] run data modify entity @s text set value '{"text":"No level set"}'
execute if score @s 42.portal_lvl matches ..0 if score @s 42.portal_x matches 1..2 as @e[tag=42.portal_id,tag=42.portal_zone_lbl_lvl] run data modify entity @s text set value '{"text":"No level set","color":"red"}'
execute if score @s 42.portal_lvl matches 1.. as @e[tag=42.portal_id,tag=42.portal_zone_lbl_lvl] run data modify entity @s text set value '{"text":"Level set"}'
execute if score @s 42.portal_lvl matches 1.. if score @s 42.portal_x matches 0 as @e[tag=42.portal_id,tag=42.portal_zone_lbl_lvl] run data modify entity @s text set value '{"text":"Level set","color":"green"}'
execute if entity @s[tag=!42.portal_zone_cool] as @e[tag=42.portal_id,tag=42.portal_zone_lbl_cool] run data modify entity @s text set value '{"text":"Ready"}'
execute if entity @s[tag=42.portal_zone_cool] as @e[tag=42.portal_id,tag=42.portal_zone_lbl_cool] run data modify entity @s text set value '{"text":"On cooldown","color":"red"}'

execute as @e[tag=42.portal_id,tag=42.portal_zone_lbl_extra] run data modify entity @s text set value '""'

execute if score @s 42.portal_x matches 0 if entity @s[tag=!42.portal_zone_checkpoint] as @e[tag=42.portal_id,tag=42.portal_zone_lbl_pow] run data modify entity @s text set value '{"text":"Checkpoint [Off]"}'
execute if score @s 42.portal_x matches 0 if entity @s[tag=42.portal_zone_checkpoint] as @e[tag=42.portal_id,tag=42.portal_zone_lbl_pow] run data modify entity @s text set value '{"text":"Checkpoint [On]","color":"green"}'

execute if score @s 42.portal_x matches 1 if score @s 42.portal_xrot1 matches ..0 as @e[tag=42.portal_id,tag=42.portal_zone_lbl_pow] run data modify entity @s text set value '{"text":"No power link set"}'
execute if score @s 42.portal_x matches 1 if score @s 42.portal_xrot1 matches 1.. as @e[tag=42.portal_id,tag=42.portal_zone_lbl_pow] run data modify entity @s text set value '{"text":"Power link set","color":"green"}'
execute if score @s 42.portal_x matches 1 if score @s 42.portal_xrot2 matches ..0 as @e[tag=42.portal_id,tag=42.portal_zone_lbl_unpow] run data modify entity @s text set value '{"text":"No unpower link set"}'
execute if score @s 42.portal_x matches 1 if score @s 42.portal_xrot2 matches 1.. as @e[tag=42.portal_id,tag=42.portal_zone_lbl_unpow] run data modify entity @s text set value '{"text":"Unpower link set","color":"green"}'
execute if score @s 42.portal_x matches 1 if entity @s[tag=!42.portal_zone_has_spawn] as @e[tag=42.portal_id,tag=42.portal_zone_lbl_spawn] run data modify entity @s text set value '{"text":"No spawn id set"}'
execute if score @s 42.portal_x matches 1 if entity @s[tag=42.portal_zone_has_spawn] as @e[tag=42.portal_id,tag=42.portal_zone_lbl_spawn] run data modify entity @s text set value '{"text":"Spawn id set","color":"green"}'
execute if score @s 42.portal_x matches 1 if entity @s[tag=!42.portal_zone_has_fizzle] as @e[tag=42.portal_id,tag=42.portal_zone_lbl_fizzle] run data modify entity @s text set value '{"text":"No fizzle id set"}'
execute if score @s 42.portal_x matches 1 if entity @s[tag=42.portal_zone_has_fizzle] as @e[tag=42.portal_id,tag=42.portal_zone_lbl_fizzle] run data modify entity @s text set value '{"text":"Fizzle id set","color":"green"}'
execute if score @s 42.portal_x matches 1 if entity @s[tag=42.portal_zone_grill] as @e[tag=42.portal_id,tag=42.portal_zone_lbl_grill] run data modify entity @s text set value '{"text":"Emancipation On","color":"green"}'

tag @e remove 42.portal_id