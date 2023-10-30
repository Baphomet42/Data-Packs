execute if score @s 42menu matches 4203000..4203999 run function 42:portal/cmdfeed
tellraw @s[scores={42menu=1}] [{"text":"","color":"gray"},{"text":"Portal","color":"gold","bold":true},{"text":"\n   "},{"text":"Get equipment...","color":"dark_gray"},{"text":"\n      "},{"text":"[Handheld Portal Device]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203013"}},{"text":"\n      "},{"text":"[Fizzle Tool]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203003"}},{"text":"\n      "},{"text":"[See Full List...]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203001"}},{"text":"\n      "},{"text":"[Get Everything]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203021"}},{"text":"\n   Debug...","color":"dark_gray"},{"text":"\n      "},{"text":"[Unload Level]","clickEvent":{"action":"suggest_command","value":"/function 42:portal/level/unload"}},{"text":"\n      "},{"text":"[Reload Checkpoint]","clickEvent":{"action":"suggest_command","value":"/trigger 42menu set 4203100"}},{"text":"\n      "},{"text":"[Unhide Zones]","clickEvent":{"action":"suggest_command","value":"/function 42:portal/generic/show_nearby_invisibles"}}]
#4203001
tellraw @s[scores={42menu=4203001}] [{"text":"","color":"gray"},{"text":"------------------------------","color":"dark_gray"},{"text":"\n   "},{"text":"Get equipment...","color":"dark_gray"},{"text":"\n      "},{"text":"[Handheld Portal Device]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203013"}},{"text":"\n      "},{"text":"[Co-Op Portal Guns]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203023"}},{"text":"\n      "},{"text":"[Disabled Portal Gun]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203024"}},{"text":"\n      "},{"text":"[Weighted Storage Cube]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203006"}},{"text":"\n      "},{"text":"[Weighted Companion Cube]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203002"}},{"text":"\n      "},{"text":"[Discouragement Redirection Cube]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203017"}},{"text":"\n      "},{"text":"[Aerial Faith Plate]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203004"}},{"text":"\n      "},{"text":"[Heavy Duty Super Button]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203007"}},{"text":"\n      "},{"text":"[Pedestal Button]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203008"}},{"text":"\n      "},{"text":"[Door]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203010"}},{"text":"\n      "},{"text":"[Elevator]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203025"}},{"text":"\n      "},{"text":"[Power Wire]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203026"}},{"text":"\n      "},{"text":"[Vital Apparatus Vent]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203011"}},{"text":"\n      "},{"text":"[Pellet Launcher]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203014"}},{"text":"\n      "},{"text":"[Pellet Catcher]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203015"}},{"text":"\n      "},{"text":"[Sentry Turret]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203016"}},{"text":"\n      "},{"text":"[Radio]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203022"}},{"text":"\n      "},{"text":"[Zone]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203027"}},{"text":"\n   "},{"text":"Get tool...","color":"dark_gray"},{"text":"\n      "},{"text":"[Fizzler]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203003"}},{"text":"\n      "},{"text":"[Select Tool]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203020"}},{"text":"\n      "},{"text":"[Link Equipment]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203009"}},{"text":"\n      "},{"text":"[Cycle Type]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203012"}},{"text":"\n      "},{"text":"[Change Skin]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203018"}},{"text":"\n      "},{"text":"[Set Load Level]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203019"}}]
#4203002-4203099
execute if entity @s[tag=!42op,gamemode=!creative,scores={42menu=4203002..4203099}] run function 42:error_perms
scoreboard players set @s[tag=!42op,gamemode=!creative,scores={42menu=4203002..4203099}] 42menu 0
#
execute if score @s 42menu matches 4203006 run function 42:portal/cube/craft
execute if score @s 42menu matches 4203002 run function 42:portal/cube/craft_companion
execute if score @s 42menu matches 4203003 run function 42:portal/tools/craft_fizzler
execute if score @s 42menu matches 4203004 run function 42:portal/launch/craft
#
execute if score @s 42menu matches 4203007 run function 42:portal/button/craft
execute if score @s 42menu matches 4203008 run function 42:portal/button/craft_pedestal
execute if score @s 42menu matches 4203009 run function 42:portal/tools/craft_link
execute if score @s 42menu matches 4203010 run function 42:portal/door/craft
execute if score @s 42menu matches 4203011 run function 42:portal/dropper/craft
execute if score @s 42menu matches 4203012 run function 42:portal/tools/craft_cycle
execute if score @s 42menu matches 4203013 run function 42:portal/gun/craft_default
execute if score @s 42menu matches 4203014 run function 42:portal/pellet/emitter/craft
execute if score @s 42menu matches 4203015 run function 42:portal/pellet/catcher/craft
execute if score @s 42menu matches 4203016 run function 42:portal/cube/turret/craft
execute if score @s 42menu matches 4203017 run function 42:portal/cube/craft_laser
execute if score @s 42menu matches 4203018 run function 42:portal/tools/craft_skin
execute if score @s 42menu matches 4203019 run function 42:portal/tools/craft_level
execute if score @s 42menu matches 4203020 run function 42:portal/tools/craft_select
execute if score @s 42menu matches 4203021 run function #42:portal_craft_all
execute if score @s 42menu matches 4203022 run function 42:portal/cube/radio/craft
execute if score @s 42menu matches 4203023 run function 42:portal/gun/craft_coop
execute if score @s 42menu matches 4203024 run function 42:portal/gun/craft_off
execute if score @s 42menu matches 4203025 run function 42:portal/elevator/craft
execute if score @s 42menu matches 4203026 run function 42:portal/wire/craft
execute if score @s 42menu matches 4203027 run function 42:portal/zone/craft
#
execute if score @s 42menu matches 4203100 run function 42:portal/level/restart
#
#4203500-4203799
execute if entity @s[tag=!42op,gamemode=!creative,scores={42menu=4203500..4203799}] run function 42:error_perms
scoreboard players set @s[tag=!42op,gamemode=!creative,scores={42menu=4203500..4203799}] 42menu 0
execute if score @s 42menu matches 4203500..4203799 run function 42:portal/select_menu