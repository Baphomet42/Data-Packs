function 42:portal/tag_selected
execute if score @s 42menu matches 4203500..4203509 unless entity @e[tag=42.portal_selected,type=!player] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203500 run scoreboard players set @s 42.portal_sel 0
execute if score @s 42menu matches 4203500 run title @s actionbar ""
execute if score @s 42menu matches 4203501 if score @e[tag=42.portal_selected,type=!player,limit=1] 42.portal_lvl matches 1.. run scoreboard players operation @s 42.portal_lvl = @e[tag=42.portal_selected,type=!player,limit=1] 42.portal_lvl
execute if score @s 42menu matches 4203501 if score @e[tag=42.portal_selected,type=!player,limit=1] 42.portal_lvl matches 1.. run function 42:portal/level/load
execute if score @s 42menu matches 4203502 if score @e[tag=42.portal_selected,type=!player,limit=1] 42.portal_link matches 1.. run scoreboard players set @e[tag=42.portal_selected,type=!player,limit=1] 42.portal_link -1
execute if score @s 42menu matches 4203502..4203503 as @e[tag=42.portal_selected,type=!player] at @s run function 42:portal/tools/sel_new
execute if score @s 42menu matches 4203504 if score @e[tag=42.portal_selected,type=!player,limit=1] 42.portal_lvl matches 0.. run scoreboard players set @e[tag=42.portal_selected,type=!player,limit=1] 42.portal_lvl -1
execute if score @s 42menu matches 4203504 as @e[tag=42.portal_selected,type=!player] at @s run function 42:portal/tools/sel_new

execute if score @s 42menu matches 4203510..4203514 unless entity @e[tag=42.portal_selected,tag=42.portal_launch] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203510 as @e[tag=42.portal_selected,tag=42.portal_launch] at @s run function 42:portal/launch/rotate
execute if score @s 42menu matches 4203511 as @e[tag=42.portal_selected,tag=42.portal_launch] at @s run function 42:portal/launch/fizzle

execute if score @s 42menu matches 4203515..4203519 unless entity @e[tag=42.portal_selected,tag=42.portal_door] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203515 as @e[tag=42.portal_selected,tag=42.portal_door] at @s run function 42:portal/door/fizzle
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
execute if score @s 42menu matches 4203533 as @e[tag=42.portal_selected,tag=42.portal_cube_tp] at @s run scoreboard players set 42.portal 42.portal_xrot1 0
execute if score @s 42menu matches 4203534 as @e[tag=42.portal_selected,tag=42.portal_cube_tp] at @s run function 42:portal/cube/spawner/new

execute if score @s 42menu matches 4203540..4203549 unless entity @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203540 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/reset
execute if score @s 42menu matches 4203541 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/toggle/on
execute if score @s 42menu matches 4203542 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/stand
execute if score @s 42menu matches 4203543 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret,tag=!42.portal_turret_oracle] at @s run function 42:portal/cube/turret/malfunction
execute if score @s 42menu matches 4203544 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/toggle/oracle
execute if score @s 42menu matches 4203545 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/toggle/nofind
execute if score @s 42menu matches 4203546 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/fall
execute if score @s 42menu matches 4203547 as @e[tag=42.portal_selected,tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/cube/turret/toggle/laser_on


execute if score @s 42menu matches 4203555..4203559 unless entity @e[tag=42.portal_selected,tag=42.portal_wire] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203555 as @e[tag=42.portal_selected,tag=42.portal_wire] at @s run function 42:portal/wire/fizzle
execute if score @s 42menu matches 4203556 as @e[tag=42.portal_selected,tag=42.portal_wire] at @s run function 42:portal/wire/unlink_full
execute if score @s 42menu matches 4203557 as @e[tag=42.portal_selected,tag=42.portal_wire] at @s run function 42:portal/wire/skin
execute if score @s 42menu matches 4203558 as @e[tag=42.portal_selected,tag=42.portal_wire] at @s run function 42:portal/wire/power
execute if score @s 42menu matches 4203559 as @e[tag=42.portal_selected,tag=42.portal_wire] at @s run function 42:portal/wire/unpower

execute if score @s 42menu matches 4203560..4203564 unless entity @e[tag=42.portal_selected,tag=42.portal_spawner] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203560 as @e[tag=42.portal_selected,tag=42.portal_spawner] at @s run function 42:portal/portal/spawner/fizzle
execute if score @s 42menu matches 4203561 as @e[tag=42.portal_selected,tag=42.portal_spawner] at @s run function 42:portal/portal/spawner/skin_portal
execute if score @s 42menu matches 4203562 as @e[tag=42.portal_selected,tag=42.portal_spawner] at @s run function 42:portal/portal/spawner/power
execute if score @s 42menu matches 4203563 as @e[tag=42.portal_selected,tag=42.portal_spawner] at @s run function 42:portal/portal/spawner/unpower

execute if score @s 42menu matches 4203565..4203567 unless entity @e[tag=42.portal_selected,tag=42.portal_pellet_catcher] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203565 as @e[tag=42.portal_selected,tag=42.portal_pellet_catcher] at @s run function 42:portal/pellet/catcher/fizzle
execute if score @s 42menu matches 4203567 as @e[tag=42.portal_selected,tag=42.portal_pellet_catcher] at @s run function 42:portal/pellet/catcher/cycle

execute if score @s 42menu matches 4203568..4203569 unless entity @e[tag=42.portal_selected,tag=42.portal_pellet] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203568 as @e[tag=42.portal_selected,tag=42.portal_pellet] at @s run function 42:portal/pellet/spawner/new
execute if score @s 42menu matches 4203569 as @e[tag=42.portal_selected,tag=42.portal_pellet] at @s run function 42:portal/pellet/pellet/fizzle

execute if score @s 42menu matches 4203570..4203574 unless entity @e[tag=42.portal_selected,tag=42.portal_pellet_emitter] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203570 as @e[tag=42.portal_selected,tag=42.portal_pellet_emitter] at @s run function 42:portal/pellet/emitter/fizzle
execute if score @s 42menu matches 4203572 as @e[tag=42.portal_selected,tag=42.portal_pellet_emitter] at @s run function 42:portal/pellet/emitter/cycle
execute if score @s 42menu matches 4203573 as @e[tag=42.portal_selected,tag=42.portal_pellet_emitter] at @s run function 42:portal/pellet/emitter/kill_pellets

execute if score @s 42menu matches 4203575..4203579 unless entity @e[tag=42.portal_selected,tag=42.portal] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203575 as @e[tag=42.portal_selected,tag=42.portal] at @s run function 42:portal/portal/fizzle
execute if score @s 42menu matches 4203576 as @e[tag=42.portal_selected,tag=42.portal] at @s run function 42:portal/portal/skin
execute if score @s 42menu matches 4203577 as @e[tag=42.portal_selected,tag=42.portal] at @s run function 42:portal/portal/spawner/try_spawn

execute if score @s 42menu matches 4203580..4203589 unless entity @e[tag=42.portal_selected,tag=42.portal_dropper] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203580 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/fizzle
execute if score @s 42menu matches 4203581 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/cycle
execute if score @s 42menu matches 4203582 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/skin
execute if score @s 42menu matches 4203583 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/power
execute if score @s 42menu matches 4203584 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/unpower
execute if score @s 42menu matches 4203585 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/drop
execute if score @s 42menu matches 4203586 as @e[tag=42.portal_selected,tag=42.portal_dropper] at @s run function 42:portal/dropper/fizzle_cube

execute if score @s 42menu matches 4203590..4203609 unless entity @e[tag=42.portal_selected,tag=42.portal_elevator] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203590 as @e[tag=42.portal_selected,tag=42.portal_elevator] at @s run function 42:portal/elevator/fizzle
execute if score @s 42menu matches 4203591 as @e[tag=42.portal_selected,tag=42.portal_elevator] at @s run function 42:portal/elevator/move/set_none
execute if score @s 42menu matches 4203592 as @e[tag=42.portal_selected,tag=42.portal_elevator] at @s run function 42:portal/elevator/move/move_x {x:1}
execute if score @s 42menu matches 4203593 as @e[tag=42.portal_selected,tag=42.portal_elevator] at @s run function 42:portal/elevator/move/move_x {x:-1}
execute if score @s 42menu matches 4203594 as @e[tag=42.portal_selected,tag=42.portal_elevator] at @s[tag=!42.portal_elevator_search] run function 42:portal/elevator/move/set/current
execute if score @s 42menu matches 4203595 as @e[tag=42.portal_selected,tag=42.portal_elevator] at @s run function 42:portal/elevator/tp/remove
execute if score @s 42menu matches 4203596 as @e[tag=42.portal_selected,tag=42.portal_elevator] at @s run function 42:portal/elevator/reset
execute if score @s 42menu matches 4203597 as @e[tag=42.portal_selected,tag=42.portal_elevator] at @s run function 42:portal/elevator/start
execute if score @s 42menu matches 4203598 as @e[tag=42.portal_selected,tag=42.portal_elevator] at @s run function 42:portal/elevator/tp/set
execute if score @s 42menu matches 4203599 as @e[tag=42.portal_selected,tag=42.portal_elevator] at @s run function 42:portal/elevator/cycle


execute if score @s 42menu matches 4203620..4203659 unless entity @e[tag=42.portal_selected,tag=42.portal_zone] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203620 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/fizzle
execute if score @s 42menu matches 4203621 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/show
execute if score @s 42menu matches 4203622 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/hide
execute if score @s 42menu matches 4203623 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/mode {x:0}
execute if score @s 42menu matches 4203624 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/mode {x:1}
execute if score @s 42menu matches 4203625 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/size {y:0}
execute if score @s 42menu matches 4203626 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/size {y:1}
execute if score @s 42menu matches 4203627 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/size {y:2}
execute if score @s 42menu matches 4203628 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/set/lvl
execute if score @s 42menu matches 4203629 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run scoreboard players set @s 42.portal_lvl -2
execute if score @s 42menu matches 4203630 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/set/power
execute if score @s 42menu matches 4203631 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run scoreboard players set @s 42.portal_xrot1 0
execute if score @s 42menu matches 4203632 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/set/unpower
execute if score @s 42menu matches 4203633 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run scoreboard players set @s 42.portal_xrot2 0
execute if score @s 42menu matches 4203634 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/set/spawn
execute if score @s 42menu matches 4203635 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run tag @s remove 42.portal_zone_has_spawn
execute if score @s 42menu matches 4203636 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/set/fizzle_spawn
execute if score @s 42menu matches 4203637 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run tag @s remove 42.portal_zone_has_fizzle
execute if score @s 42menu matches 4203628..4203637 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/update
execute if score @s 42menu matches 4203638 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run tag @s remove 42.portal_zone_cool
execute if score @s 42menu matches 4203638 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/tools/sel_new
execute if score @s 42menu matches 4203639 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/mode/load/toggle_checkpoint
execute if score @s 42menu matches 4203640 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/mode {x:2}
execute if score @s 42menu matches 4203641 as @e[tag=42.portal_selected,tag=42.portal_zone] at @s run function 42:portal/zone/mode/trigger/toggle_emancipation

execute if score @s 42menu matches 4203660..4203669 unless entity @e[tag=42.portal_selected,tag=42.portal_cube_spawner] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203660 as @e[tag=42.portal_selected,tag=42.portal_cube_spawner] at @s run function 42:portal/cube/spawner/fizzle
execute if score @s 42menu matches 4203661 as @e[tag=42.portal_selected,tag=42.portal_cube_spawner] at @s run function 42:portal/cube/spawner/show
execute if score @s 42menu matches 4203662 as @e[tag=42.portal_selected,tag=42.portal_cube_spawner] at @s run function 42:portal/cube/spawner/hide
execute if score @s 42menu matches 4203663 as @e[tag=42.portal_selected,tag=42.portal_cube_spawner] at @s run function 42:portal/cube/spawner/power
execute if score @s 42menu matches 4203664 as @e[tag=42.portal_selected,tag=42.portal_cube_spawner] at @s run function 42:portal/cube/spawner/unpower

execute if score @s 42menu matches 4203670..4203679 unless entity @e[tag=42.portal_selected,tag=42.portal_pellet_spawner] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203670 as @e[tag=42.portal_selected,tag=42.portal_pellet_spawner] at @s run function 42:portal/pellet/spawner/fizzle
execute if score @s 42menu matches 4203671 as @e[tag=42.portal_selected,tag=42.portal_pellet_spawner] at @s run function 42:portal/pellet/spawner/show
execute if score @s 42menu matches 4203672 as @e[tag=42.portal_selected,tag=42.portal_pellet_spawner] at @s run function 42:portal/pellet/spawner/hide
execute if score @s 42menu matches 4203673 as @e[tag=42.portal_selected,tag=42.portal_pellet_spawner] at @s run function 42:portal/pellet/spawner/power
execute if score @s 42menu matches 4203674 as @e[tag=42.portal_selected,tag=42.portal_pellet_spawner] at @s run function 42:portal/pellet/spawner/unpower

execute if score @s 42menu matches 4203680..4203684 unless entity @e[tag=42.portal_selected,tag=42.portal_grill] run function 42:portal/tools/sel_error
execute if score @s 42menu matches 4203680 as @e[tag=42.portal_selected,tag=42.portal_grill] at @s run function 42:portal/grill/fizzle

tag @e remove 42.portal_selected