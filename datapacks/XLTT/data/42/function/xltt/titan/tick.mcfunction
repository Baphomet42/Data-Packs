function 42:xltt/tag_id

execute positioned ~ ~8 ~ rotated ~ 0 run tp @e[type=item_display,tag=42.tag.xltt.id,tag=42.tag.xltt.titan.hit_tp,limit=1] ^ ^ ^-.66
execute if entity @s[scores={42.obj.xltt.titan_time=3},predicate=42:xltt/titan_speed_test,nbt={OnGround:true}] at @s run playsound entity.hoglin.step hostile @a ~ ~ ~ 4 .5
data modify entity @s Fire set value 0s

execute as @e[tag=42.tag.xltt.id,tag=42.tag.xltt.titan.hit,limit=1] run function 42:xltt/titan/hurt
execute if entity @s[tag=42.tag.xltt.titan.kill] run function 42:xltt/titan/death

scoreboard players add @s 42.obj.xltt.titan_time 1
scoreboard players set @s[scores={42.obj.xltt.titan_time=5..}] 42.obj.xltt.titan_time 0

tag @e remove 42.tag.xltt.id