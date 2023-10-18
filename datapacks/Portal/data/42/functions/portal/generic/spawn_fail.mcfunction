execute at @s positioned ~ ~-.25 ~ run function 42:portal/tools/notif
execute at @s positioned ~ ~-.25 ~ run data merge entity @e[tag=42.portal_notif,limit=1,sort=nearest] {CustomName:'{"text":"Not enough space"}'}
execute if block ~ ~ ~ light unless block ~ ~ ~ #42:portal_replace run function 42:portal/generic/find_all {dx:0,dy:0,dz:0,mode:if,block:light}