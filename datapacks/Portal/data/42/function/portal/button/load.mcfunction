$scoreboard players set @e[tag=42.tag.portal.temp] 42.obj.portal.id $(id)
execute store result score @e[tag=42.tag.portal.temp,tag=42.tag.portal.btn] 42.obj.portal.lvl run data get storage 42:portal loader.lvl
$scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.btn] 42.obj.portal.link $(link)
execute if data storage 42:portal loader.temp_entity.tag_btn_cube as @e[tag=42.tag.portal.temp,tag=42.tag.portal.btn] at @s run function 42:portal/button/cycle_silent