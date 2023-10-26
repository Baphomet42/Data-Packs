$execute at @s $(mode) block ~ ~ ~ $(block) run function 42:portal/generic/find_all/found
$execute at @s $(mode) block ~ ~ ~ $(block) if block ~ ~ ~ light run function 42:portal/generic/find_all/mark_light
$execute at @s $(mode) block ~ ~ ~ $(block) if block ~ ~ ~ barrier align xyz positioned ~.5 ~.5 ~.5 run particle block_marker barrier ~ ~ ~ 0 0 0 0 1 force
scoreboard players remove @s 42.portal_u 1
execute at @s run tp @s ~ ~1 ~
execute if score @s 42.portal_u matches 0.. at @s run function 42:portal/generic/find_all/y with storage 42.portal temp