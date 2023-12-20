$scoreboard players set @e[tag=42.portal_temp] 42.portal_id $(id)
$scoreboard players set @e[tag=42.portal_temp,tag=42.portal_pedestal] 42.portal_lvl $(lvl)
$scoreboard players set @e[tag=42.portal_temp,tag=42.portal_pedestal] 42.portal_link $(link)
$scoreboard players set @e[tag=42.portal_temp,tag=42.portal_pedestal] 42.portal_x $(x)
$execute as @e[tag=42.portal_temp] at @s run tp @s ~ ~ ~ $(rotation) ~