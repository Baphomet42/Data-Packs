function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_door_dis] run data merge entity @s {transformation:{translation:[-1.25f,0f,-.3f]},interpolation_duration:2,start_interpolation:-1}
execute if score @s 42.portal_x matches 1 run fill ~-1 ~ ~ ~1 ~2 ~ polished_blackstone_wall
execute if score @s 42.portal_x matches 2 run fill ~ ~ ~-1 ~ ~2 ~1 polished_blackstone_wall
execute unless entity @s[tag=42.portal_temp] run playsound minecraft:entity.player.breath block @a ~ ~ ~ 1 1.75
tag @s[tag=42.portal_door] remove 42.portal_door_on
tag @e remove 42.portal_id