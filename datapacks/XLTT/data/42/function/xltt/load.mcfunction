scoreboard objectives add 42.datapack dummy
#
scoreboard objectives add 42.xltt_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add 42.xltt_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add 42.odm_time dummy
scoreboard objectives add 42menu trigger
scoreboard objectives add 42.xltt_id dummy
scoreboard objectives add 42.xltt_temp dummy
scoreboard objectives add 42.odm_x dummy
scoreboard objectives add 42.odm_y dummy
scoreboard objectives add 42.odm_z dummy
scoreboard objectives add 42.titan_id dummy
scoreboard objectives add 42.titan_time dummy
team add titanCol
team modify titanCol collisionRule never
#
function 42:xltt/tick
#
scoreboard objectives add 42menu trigger
function 42:42menu