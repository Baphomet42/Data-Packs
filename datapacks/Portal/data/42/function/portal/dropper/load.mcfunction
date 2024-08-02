$scoreboard players set @e[tag=42.portal_temp] 42.portal_id $(id)
$scoreboard players set @e[tag=42.portal_temp,tag=42.portal_dropper] 42.portal_lvl $(lvl)
$scoreboard players set @e[tag=42.portal_temp,tag=42.portal_dropper] 42.portal_link $(link)
$scoreboard players set @e[tag=42.portal_temp,tag=42.portal_dropper] 42.portal_skin $(skin)
$scoreboard players set @e[tag=42.portal_temp,tag=42.portal_dropper] 42.portal_x $(x)

scoreboard players remove @e[tag=42.portal_temp,tag=42.portal_dropper] 42.portal_skin 1
scoreboard players remove @e[tag=42.portal_temp,tag=42.portal_dropper] 42.portal_x 1
execute as @e[tag=42.portal_temp,tag=42.portal_dropper] at @s run function 42:portal/dropper/skin
execute as @e[tag=42.portal_temp,tag=42.portal_dropper] at @s run function 42:portal/dropper/cycle_silent