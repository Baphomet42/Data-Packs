function 42:portal/level/unload
scoreboard players operation @s 42.portal_lvl = @e[tag=42.portal_zone_this,limit=1] 42.portal_lvl
execute if score @s 42.portal_lvl matches ..-1 run scoreboard players set @s 42.portal_lvl 0