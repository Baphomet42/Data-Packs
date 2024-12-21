summon area_effect_cloud ~ ~ ~ {Tags:["42.tag.summon"],Duration:10,DurationOnUse:0,Particle:{type:flash},Radius:.25f,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0}

function 42:portal/tag_selected
function 42:portal/cmdfeed
tellraw @p[tag=42.tag.portal.selected] [{"text":"","color":"gray"},{"text":"------------------------------\n","color":"dark_gray"},\
    {"selector":"@s","color":"gold","bold":true},\
    {"text":" "},{"text":"🖶","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"},"hoverEvent":{"action":"show_text","contents":[{"text":"Enable Command Feedback\n\nCommand feedback is temporarily disabled each time a trigger menu is shown, preventing some trigger messages that spam chat and move the menu. Click to re-enable command feedback immediately."}]}},\
    {"text":" "},{"text":"⟳","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203503"},"hoverEvent":{"action":"show_text","contents":[{"text":"Refresh Selection Screen\n\nSelection options are only sent to chat when first selecting equipment. Refresh to reselct the equipment and see changes."}]}}]

execute if entity @s[tag=42.tag.portal.cube.tp] at @s run function 42:portal/cube/select
execute if entity @s[tag=42.tag.portal.launch] at @s run function 42:portal/launch/select
execute if entity @s[tag=42.tag.portal.btn] at @s run function 42:portal/button/select
execute if entity @s[tag=42.tag.portal.pedestal] at @s run function 42:portal/button/select_pedestal
execute if entity @s[tag=42.tag.portal.door] at @s run function 42:portal/door/select
execute if entity @s[tag=42.tag.portal.dropper] at @s run function 42:portal/dropper/select
execute if entity @s[tag=42.tag.portal.portal] at @s run function 42:portal/portal/select
execute if entity @s[tag=42.tag.portal.pellet.catcher] at @s run function 42:portal/pellet/catcher/select
execute if entity @s[tag=42.tag.portal.pellet.emitter] at @s run function 42:portal/pellet/emitter/select
execute if entity @s[tag=42.tag.portal.pellet] at @s run function 42:portal/pellet/pellet/select
execute if entity @s[tag=42.tag.portal.elevator] at @s run function 42:portal/elevator/select
execute if entity @s[tag=42.tag.portal.wire] at @s run function 42:portal/wire/select
execute if entity @s[tag=42.tag.portal.portal.spawner] at @s run function 42:portal/portal/spawner/select
execute if entity @s[tag=42.tag.portal.zone] at @s run function 42:portal/zone/select
execute if entity @s[tag=42.tag.portal.cube.spawner] at @s run function 42:portal/cube/spawner/select
execute if entity @s[tag=42.tag.portal.pellet.spawner] at @s run function 42:portal/pellet/spawner/select
execute if entity @s[tag=42.tag.portal.grill] at @s run function 42:portal/grill/select

execute if score @s[tag=!42.tag.portal.portal.group,tag=!42.tag.portal.wire] 42.obj.portal.link matches 1.. run tellraw @p[tag=42.tag.portal.selected] [{"text":"      "},{"text":"[Unlink]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203502"}}]
execute if score @s[tag=!42.tag.portal.zone,tag=!42.tag.portal.portal] 42.obj.portal.lvl matches 0.. run tellraw @p[tag=42.tag.portal.selected] [{"text":"      "},{"text":"[Unbind Level]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203504"}}]
execute if score @s[tag=!42.tag.portal.portal] 42.obj.portal.lvl matches 1.. run tellraw @p[tag=42.tag.portal.selected] [{"text":"      "},{"text":"[Load Level]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203501"}}]
tellraw @p[tag=42.tag.portal.selected] [{"text":"      "},{"text":"[Deselect]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203500"}}]
tag @e remove 42.tag.portal.selected