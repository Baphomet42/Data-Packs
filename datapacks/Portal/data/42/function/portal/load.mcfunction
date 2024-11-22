scoreboard objectives add 42.datapack dummy

scoreboard objectives add 42.portal_const dummy
scoreboard objectives add 42.portal_id dummy
scoreboard objectives add 42.portal_time dummy
scoreboard objectives add 42.portal_temp dummy
scoreboard objectives add 42.portal_c dummy
scoreboard objectives add 42.portal_u dummy
scoreboard objectives add 42.portal_v dummy
scoreboard objectives add 42.portal_w dummy
scoreboard objectives add 42.portal_x dummy
scoreboard objectives add 42.portal_y dummy
scoreboard objectives add 42.portal_z dummy
scoreboard objectives add 42.portal_link dummy
scoreboard objectives add 42.portal_cool dummy
scoreboard objectives add 42.portal_gun_use minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add 42.portal_gun_use2 minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add 42.portal_xrot1 dummy
scoreboard objectives add 42.portal_yrot1 dummy
scoreboard objectives add 42.portal_xrot2 dummy
scoreboard objectives add 42.portal_yrot2 dummy
scoreboard objectives add 42.portal_damage dummy
scoreboard objectives add 42.portal_skin dummy
scoreboard objectives add 42.portal_lvl dummy
scoreboard objectives add 42.portal_sel dummy
scoreboard objectives add 42.portal_col dummy
scoreboard objectives add 42.portal_death deathCount
scoreboard objectives add 42.portal_stat dummy

scoreboard players set 42.portal_const_n1 42.portal_id -1
scoreboard players set 42.portal_const_n1 42.datapack 3
scoreboard players set 42.portal_rule_cache 42.datapack 3
scoreboard players set 42.portal 42.datapack 3
scoreboard players set #num_2 42.portal_const 2
scoreboard players set #num_8 42.portal_const 8
scoreboard players set #num_32 42.portal_const 32
scoreboard players set #num_64 42.portal_const 64
scoreboard players set #num_128 42.portal_const 128
execute unless score #music_time 42.portal_id matches 1.. run scoreboard players set #music_time 42.portal_id -1

team add 42.no_col
team modify 42.no_col collisionRule never

function 42:portal/tick

scoreboard objectives add 42menu trigger
function 42:42menu