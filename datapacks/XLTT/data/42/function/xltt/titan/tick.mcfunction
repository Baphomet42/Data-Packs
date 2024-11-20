function 42:xltt/tag_id

execute positioned ~ ~8 ~ rotated ~ 0 run tp @e[type=item_display,tag=42.xltt_id,tag=42.xltt_titan_hit_tp,limit=1] ^ ^ ^-1
execute if entity @s[scores={42.xltt_titan_time=3},predicate=42:titan_speed_test,nbt={OnGround:1b}] at @s run playsound entity.hoglin.step hostile @a ~ ~ ~ 4 .5
data modify entity @s Fire set value 0s

execute as @e[tag=42.xltt_id,tag=42.xltt_titan_hit,limit=1] run function 42:xltt/titan/hurt
execute if entity @s[tag=42.xltt_titan_kill] run function 42:xltt/titan/death

scoreboard players add @s 42.xltt_titan_time 1
scoreboard players set @s[scores={42.xltt_titan_time=5..}] 42.xltt_titan_time 0

tag @e remove 42.xltt_id