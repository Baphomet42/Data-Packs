# keep consistent with gun/particle, gun/setup_look, gun/use, portal/particle, portal/set_name, portal/set_color_dis, portal/set_back_color_dis

data modify entity @s block_state.Name set value white_stained_glass
execute if score @s 42.portal_skin matches 0 run return run data modify entity @s block_state.Name set value white_stained_glass
execute if score @s 42.portal_skin matches 1 run return run data modify entity @s block_state.Name set value light_gray_stained_glass
execute if score @s 42.portal_skin matches 2 run return run data modify entity @s block_state.Name set value gray_stained_glass
execute if score @s 42.portal_skin matches 3 run return run data modify entity @s block_state.Name set value black_stained_glass
execute if score @s 42.portal_skin matches 4 run return run data modify entity @s block_state.Name set value brown_stained_glass
execute if score @s 42.portal_skin matches 5 run return run data modify entity @s block_state.Name set value red_stained_glass
execute if score @s 42.portal_skin matches 6 run return run data modify entity @s block_state.Name set value orange_stained_glass
execute if score @s 42.portal_skin matches 7 run return run data modify entity @s block_state.Name set value yellow_stained_glass
execute if score @s 42.portal_skin matches 8 run return run data modify entity @s block_state.Name set value lime_stained_glass
execute if score @s 42.portal_skin matches 9 run return run data modify entity @s block_state.Name set value green_stained_glass
execute if score @s 42.portal_skin matches 10 run return run data modify entity @s block_state.Name set value cyan_stained_glass
execute if score @s 42.portal_skin matches 11 run return run data modify entity @s block_state.Name set value light_blue_stained_glass
execute if score @s 42.portal_skin matches 12 run return run data modify entity @s block_state.Name set value blue_stained_glass
execute if score @s 42.portal_skin matches 13 run return run data modify entity @s block_state.Name set value purple_stained_glass
execute if score @s 42.portal_skin matches 14 run return run data modify entity @s block_state.Name set value magenta_stained_glass
execute if score @s 42.portal_skin matches 15 run return run data modify entity @s block_state.Name set value pink_stained_glass
execute if score @s 42.portal_skin matches 16 run return run data modify entity @s block_state.Name set value tinted_glass