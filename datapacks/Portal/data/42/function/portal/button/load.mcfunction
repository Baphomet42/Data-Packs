$scoreboard players set @e[tag=42.portal_temp] 42.portal_id $(id)
$scoreboard players set @e[tag=42.portal_temp,tag=42.portal_btn] 42.portal_lvl $(lvl)
$scoreboard players set @e[tag=42.portal_temp,tag=42.portal_btn] 42.portal_link $(link)
execute if data storage 42:portal loader.temp_entity.tag_btn_cube run execute as @e[tag=42.portal_temp,tag=42.portal_btn] at @s run function 42:portal/button/cycle_silent