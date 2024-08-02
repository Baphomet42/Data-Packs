function 42:xltt/tag_id
execute if items entity @s weapon.mainhand *[custom_data~{42xltt_odm:1b}] if items entity @s weapon.offhand *[custom_data~{42xltt_odm:1b}] run tag @s add 42.odm_dual
execute unless entity @s[tag=42.odm_dual] as @e[tag=42.odm_wire,tag=42.xltt_id] at @s run function 42:xltt/odm/break
scoreboard players set @s 42.xltt_temp 0
execute as @e[tag=42.odm_wire,tag=42.xltt_id] run scoreboard players add @a[tag=42.xltt_id] 42.xltt_temp 1
execute if entity @s[scores={42.xltt_temp=2..}] run function 42:xltt/odm/dual_check
tag @e remove 42.xltt_id

tag @s remove 42.odm_dual
playsound entity.wither.break_block player @a ~ ~ ~ .35 1.8
tag @e remove 42.xltt_temp_spawn
summon marker ~ ~ ~ {Tags:["42.odm_wire","42.odm_new","42.xltt_temp_spawn"]}
scoreboard players set @e[tag=42.xltt_temp_spawn] 42.datapack 1
tag @e remove 42.xltt_temp_spawn
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=42.odm_wire,tag=42.odm_new,limit=1,sort=nearest,distance=..16] ~ ~ ~ ~ ~
scoreboard players operation @e[type=marker,tag=42.odm_new] 42.xltt_id = @s 42.xltt_id
tag @e[tag=42.odm_wire,tag=42.odm_new,distance=..16] remove 42.odm_new