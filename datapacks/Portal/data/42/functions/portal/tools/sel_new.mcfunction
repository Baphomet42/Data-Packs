function 42:portal/tag_selected
function 42:portal/cmdfeed
tellraw @p[tag=42.portal_selected] [{"text":"------------------------------","color":"dark_gray"}]
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
execute if score @s 42.portal_link matches 1.. run tellraw @p[tag=42.portal_selected] [{"text":"      "},{"text":"[Unlink]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203502"}}]
execute if score @s 42.portal_lvl matches 1.. run tellraw @p[tag=42.portal_selected] [{"text":"      "},{"text":"[Load Level]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203501"}}]
tellraw @p[tag=42.portal_selected] [{"text":"      "},{"text":"[Deselect]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203500"}}]
tag @e remove 42.portal_selected