scoreboard objectives add 42.datapack dummy
scoreboard objectives add 42.portal_id dummy
scoreboard objectives add 42.portal_time dummy
scoreboard objectives add 42.portal_temp dummy
scoreboard objectives add 42.portal_w dummy
scoreboard objectives add 42.portal_x dummy
scoreboard objectives add 42.portal_y dummy
scoreboard objectives add 42.portal_z dummy
scoreboard objectives add 42.portal_link dummy
scoreboard objectives add 42.portal_cool dummy
scoreboard objectives add 42.portal_gun_use minecraft.used:minecraft.warped_fungus_on_a_stick
#
scoreboard players set 42.portal_const_n1 42.portal_id -1
#
team add 42.no_col
team modify 42.no_col collisionRule never
#
function 42:portal/tick
#
scoreboard objectives add 42menu trigger
function 42:42menu