playsound minecraft:block.fire.extinguish block @a ~ ~.5 ~ 1.5 1
playsound minecraft:block.beacon.deactivate block @a ~ ~.5 ~ 4 1
particle minecraft:large_smoke ~ ~.5 ~ .4 .4 .4 0 20
function 42:portal/tag_id
scoreboard players set @a[tag=42.tag.portal.id] 42.obj.portal.id 0
tp @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.collision] ~ -512 ~
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.group,tag=!42.tag.portal.cube.dis]

data modify storage 42:portal temp set value {brightness:{block:0,sky:0},interpolation_duration:30,teleport_duration:30,start_interpolation:-1,\
    transformation:{left_rotation:{angle:0f,axis:[1f,0f,0f]}}}
execute store result storage 42:portal temp.transformation.left_rotation.angle float .01 run random value 100..528
execute store result storage 42:portal temp.transformation.left_rotation.axis[0] float .01 run random value -100..100
execute store result storage 42:portal temp.transformation.left_rotation.axis[1] float .01 run random value -100..100
execute store result storage 42:portal temp.transformation.left_rotation.axis[2] float .01 run random value -100..100
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] run function 42:portal/cube/fizzle_effect_start
data remove storage 42:portal temp

execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.vent.on,tag=!42.tag.portal.vent.fizzle] at @s run function 42:portal/vent/drop
tag @e remove 42.tag.portal.id