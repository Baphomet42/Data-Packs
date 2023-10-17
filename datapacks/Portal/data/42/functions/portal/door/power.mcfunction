function 42:portal/tag_id
execute if score @s 42.portal_x matches 1 run fill ~-1 ~ ~ ~1 ~2 ~ air
execute if score @s 42.portal_x matches 2 run fill ~ ~ ~-1 ~ ~2 ~1 air
playsound minecraft:entity.player.breath block @a ~ ~ ~ 1 1.25
execute as @e[tag=42.portal_id,tag=42.portal_door_dis] run data merge entity @s {transformation:{translation:[-2.45f,0f,-.3f]},interpolation_duration:10,start_interpolation:-1}
tag @s[tag=42.portal_door] add 42.portal_door_on
tag @e remove 42.portal_id