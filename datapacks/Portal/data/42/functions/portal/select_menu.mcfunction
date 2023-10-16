function 42:portal/tag_selected
execute if score @s 42menu matches 4203500 run scoreboard players set @s 42.portal_sel 0
execute if score @s 42menu matches 4203500 run title @s actionbar ""
execute if score @s 42menu matches 4203501 if score @e[tag=42.portal_selected,type=!player,limit=1] 42.portal_lvl matches 1.. run scoreboard players operation @s 42.portal_lvl = @e[tag=42.portal_selected,type=!player,limit=1] 42.portal_lvl
execute if score @s 42menu matches 4203502 if score @e[tag=42.portal_selected,type=!player,limit=1] 42.portal_link matches 1.. run scoreboard players set @e[tag=42.portal_selected,type=!player,limit=1] 42.portal_link -1
execute if score @s 42menu matches 4203510..4203514 unless entity @e[tag=42.portal_selected,tag=42.portal_launch] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203510 as @e[tag=42.portal_selected,tag=42.portal_launch] at @s run function 42:portal/launch/rotate
execute if score @s 42menu matches 4203511 as @e[tag=42.portal_selected,tag=42.portal_launch] at @s run function 42:portal/launch/fizzle
execute if score @s 42menu matches 4203515..4203519 unless entity @e[tag=42.portal_selected,tag=42.portal_door] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203515 as @e[tag=42.portal_selected,tag=42.portal_door] at @s run function 42:portal/door/fizzle
execute if score @s 42menu matches 4203516 as @e[tag=42.portal_selected,tag=42.portal_door] at @s run function 42:portal/door/rotate
execute if score @s 42menu matches 4203517 as @e[tag=42.portal_selected,tag=42.portal_door] at @s run function 42:portal/door/power
execute if score @s 42menu matches 4203518 as @e[tag=42.portal_selected,tag=42.portal_door] at @s run function 42:portal/door/unpower
execute if score @s 42menu matches 4203520..4203524 unless entity @e[tag=42.portal_selected,tag=42.portal_pedestal] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203520 as @e[tag=42.portal_selected,tag=42.portal_pedestal] at @s run function 42:portal/button/fizzle_pedestal
execute if score @s 42menu matches 4203521 as @e[tag=42.portal_selected,tag=42.portal_pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if score @s 42menu matches 4203522 as @e[tag=42.portal_selected,tag=42.portal_pedestal] at @s run function 42:portal/button/set_time {ticks:50}
execute if score @s 42menu matches 4203525..4203529 unless entity @e[tag=42.portal_selected,tag=42.portal_btn] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203525 as @e[tag=42.portal_selected,tag=42.portal_btn] at @s run function 42:portal/button/fizzle
execute if score @s 42menu matches 4203526 as @e[tag=42.portal_selected,tag=42.portal_btn] at @s run function 42:portal/button/cycle
execute if score @s 42menu matches 4203530..4203539 unless entity @e[tag=42.portal_selected,tag=42.portal_cube_tp] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203530 as @e[tag=42.portal_selected,tag=42.portal_cube_tp] at @s run function 42:portal/cube/fizzle
execute if score @s 42menu matches 4203531 as @e[tag=42.portal_selected,tag=42.portal_cube_tp] at @s run function 42:portal/cube/skin
execute if score @s 42menu matches 4203532 if entity @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_cube1] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203532 if entity @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_cube2] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203532 as @e[tag=42.portal_selected,tag=42.portal_cube_tp] at @s run function 42:portal/cube/rotate
execute if score @s 42menu matches 4203540..4203549 unless entity @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203540 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/reset
execute if score @s 42menu matches 4203541 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/set_on
execute if score @s 42menu matches 4203542 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/deactivate
execute if score @s 42menu matches 4203543 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/malfunction
execute if score @s 42menu matches 4203544 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/setup_oracle
execute if score @s 42menu matches 4203545 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run tag @s add 42.portal_turret_nofind
execute if score @s 42menu matches 4203546 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/fall
execute if score @s 42menu matches 4203565..4203568 unless entity @e[tag=42.portal_selected,tag=42.portal_pellet_catcher] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203565 as @e[tag=42.portal_selected,tag=42.portal_pellet_catcher] at @s run function 42:portal/pellet/catcher/fizzle
execute if score @s 42menu matches 4203566 as @e[tag=42.portal_selected,tag=42.portal_pellet_catcher] at @s run function 42:portal/pellet/catcher/rotate
execute if score @s 42menu matches 4203567 as @e[tag=42.portal_selected,tag=42.portal_pellet_catcher] at @s run function 42:portal/pellet/catcher/cycle
execute if score @s 42menu matches 4203569 unless entity @e[tag=42.portal_selected,tag=42.portal_pellet] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203569 as @e[tag=42.portal_selected,tag=42.portal_pellet] at @s run function 42:portal/pellet/pellet/fizzle
execute if score @s 42menu matches 4203570..4203574 unless entity @e[tag=42.portal_selected,tag=42.portal_pellet_emitter] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203570 as @e[tag=42.portal_selected,tag=42.portal_pellet_emitter] at @s run function 42:portal/pellet/emitter/fizzle
execute if score @s 42menu matches 4203571 as @e[tag=42.portal_selected,tag=42.portal_pellet_emitter] at @s run function 42:portal/pellet/emitter/rotate
execute if score @s 42menu matches 4203572 as @e[tag=42.portal_selected,tag=42.portal_pellet_emitter] at @s run function 42:portal/pellet/emitter/cycle
execute if score @s 42menu matches 4203575..4203579 unless entity @e[tag=42.portal_selected,tag=42.portal] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203575 as @e[tag=42.portal_selected,tag=42.portal] at @s run function 42:portal/portal/fizzle
execute if score @s 42menu matches 4203580..4203589 unless entity @e[tag=42.portal_selected,tag=42.portal_dropper] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203580 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/fizzle
execute if score @s 42menu matches 4203581 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/cycle
execute if score @s 42menu matches 4203582 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/skin
execute if score @s 42menu matches 4203583 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/power
execute if score @s 42menu matches 4203584 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/unpower
execute if score @s 42menu matches 4203585 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/drop
execute if score @s 42menu matches 4203586 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/fizzle_cube
tag @e remove 42.portal_selected