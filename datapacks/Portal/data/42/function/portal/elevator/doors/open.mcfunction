execute as @e[tag=42.tag.portal.elevator.door_l,tag=42.tag.portal.id] run data merge entity @s {transformation:{translation:[-1.375f,-1.225f,1.375f],scale:[.5f,2.35f,.125f]},interpolation_duration:15,start_interpolation:-1}
execute as @e[tag=42.tag.portal.elevator.door_r,tag=42.tag.portal.id] run data merge entity @s {transformation:{translation:[.875f,-1.225f,1.375f],scale:[.5f,2.35f,.125f]},interpolation_duration:15,start_interpolation:-1}
execute as @e[tag=42.tag.portal.elevator.main,tag=42.tag.portal.id] at @s run fill ^-1 ^1 ^2 ^1 ^1 ^2 air replace barrier
execute at @e[tag=42.tag.portal.elevator.car,tag=42.tag.portal.id] run playsound minecraft:entity.player.breath block @a ~ ~ ~ 1 1.75
tag @e[tag=42.tag.portal.elevator.main,tag=42.tag.portal.id,limit=1] remove 42.tag.portal.elevator.shut
function 42:portal/elevator/walls/reset