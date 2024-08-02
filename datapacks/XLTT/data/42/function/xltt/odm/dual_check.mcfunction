scoreboard players set 42.xltt 42.xltt_temp 0
execute as @e[tag=42.odm_wire,tag=42.xltt_id,tag=!42.odm_hit] run scoreboard players operation 42.xltt 42.xltt_temp > @s 42.xltt_odm_time
execute as @e[tag=42.odm_wire,tag=42.xltt_id,tag=!42.odm_hit] if score @s 42.xltt_odm_time = 42.xltt 42.xltt_temp at @s run function 42:xltt/odm/break