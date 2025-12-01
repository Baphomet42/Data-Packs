advancement revoke @s only 42:xltt/use_odm
execute if score @s 42.obj.xltt.odm_click matches 1.. run return run scoreboard players set @s 42.obj.xltt.odm_click 5
scoreboard players set @s 42.obj.xltt.odm_click 5

function 42:xltt/match_id
execute if items entity @s weapon.mainhand *[custom_data~{42data:{xltt:{odm:{}}}}] if items entity @s weapon.offhand *[custom_data~{42data:{xltt:{odm:{}}}}] run tag @s add 42.tag.xltt.odm.dual
execute unless entity @s[tag=42.tag.xltt.odm.dual] as @e[tag=42.tag.xltt.odm.wire,predicate=42:xltt/match_id] at @s run function 42:xltt/odm/break
scoreboard players set @s 42.obj.xltt.temp 0
execute as @e[tag=42.tag.xltt.odm.wire,predicate=42:xltt/match_id] run scoreboard players add @a[predicate=42:xltt/match_id] 42.obj.xltt.temp 1
execute if entity @s[scores={42.obj.xltt.temp=2..}] run function 42:xltt/odm/dual_check

tag @s remove 42.tag.xltt.odm.dual
playsound entity.wither.break_block player @a ~ ~ ~ .35 1.8
summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.xltt.odm.wire","42.tag.xltt.odm.new"]}
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=42.tag.xltt.odm.wire,tag=42.tag.xltt.odm.new,limit=1,sort=nearest,distance=..16] ~ ~ ~ ~ ~
scoreboard players operation @e[type=marker,tag=42.tag.xltt.odm.new] 42.obj.xltt.id = @s 42.obj.xltt.id
tag @e[tag=42.tag.xltt.odm.wire,tag=42.tag.xltt.odm.new,distance=..16] remove 42.tag.xltt.odm.new