tag @e remove 42.portal_new_spawn
summon area_effect_cloud ~ ~ ~ {Tags:["42.portal_new_spawn"],Duration:10,DurationOnUse:0,Particle:"flash",Radius:.25d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
tag @e remove 42.portal_new_spawn
#
function 42:portal/tag_selected
function 42:portal/cmdfeed
tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},{"text":"------------------------------\n","color":"dark_gray"},\
    {"selector":"@s","color":"gold","bold":true},\
    {"text":" "},{"text":"🖶","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"},"hoverEvent":{"action":"show_text","contents":[{"text":"Enable Command Feedback\n\nCommand feedback is temporarily disabled each time a trigger menu is shown, preventing some trigger messages that spam chat and move the menu. Click to re-enable command feedback immediately."}]}},\
    {"text":" "},{"text":"⟳","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203503"},"hoverEvent":{"action":"show_text","contents":[{"text":"Refresh Selection Screen\n\nSelection options are only sent to chat when first selecting equipment. Refresh to reselct the equipment and see changes."}]}}]
#
execute if entity @s[tag=42.portal_cube_tp] at @s run function 42:portal/cube/select
execute if entity @s[tag=42.portal_launch] at @s run function 42:portal/launch/select
execute if entity @s[tag=42.portal_btn] at @s run function 42:portal/button/select
execute if entity @s[tag=42.portal_pedestal] at @s run function 42:portal/button/select_pedestal
execute if entity @s[tag=42.portal_door] at @s run function 42:portal/door/select
execute if entity @s[tag=42.portal_dropper] at @s run function 42:portal/dropper/select
execute if entity @s[tag=42.portal] at @s run function 42:portal/portal/select
execute if entity @s[tag=42.portal_pellet_catcher] at @s run function 42:portal/pellet/catcher/select
execute if entity @s[tag=42.portal_pellet_emitter] at @s run function 42:portal/pellet/emitter/select
execute if entity @s[tag=42.portal_pellet] at @s run function 42:portal/pellet/pellet/select
execute if entity @s[tag=42.portal_elevator] at @s run function 42:portal/elevator/select
execute if entity @s[tag=42.portal_wire] at @s run function 42:portal/wire/select
execute if entity @s[tag=42.portal_spawner] at @s run function 42:portal/portal/spawner/select
execute if entity @s[tag=42.portal_zone] at @s run function 42:portal/zone/select
execute if entity @s[tag=42.portal_cube_spawner] at @s run function 42:portal/cube/spawner/select
execute if entity @s[tag=42.portal_pellet_spawner] at @s run function 42:portal/pellet/spawner/select
execute if entity @s[tag=42.portal_grill] at @s run function 42:portal/grill/select
#
execute if score @s[tag=!42.portal_group,tag=!42.portal_wire] 42.portal_link matches 1.. run tellraw @p[tag=42.portal_selected] [{"text":"      "},{"text":"[Unlink]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203502"}}]
execute if score @s[tag=!42.portal_zone,tag=!42.portal] 42.portal_lvl matches 0.. run tellraw @p[tag=42.portal_selected] [{"text":"      "},{"text":"[Unbind Level]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203504"}}]
execute if score @s[tag=!42.portal] 42.portal_lvl matches 1.. run tellraw @p[tag=42.portal_selected] [{"text":"      "},{"text":"[Load Level]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203501"}}]
tellraw @p[tag=42.portal_selected] [{"text":"      "},{"text":"[Deselect]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203500"}}]
tag @e remove 42.portal_selected