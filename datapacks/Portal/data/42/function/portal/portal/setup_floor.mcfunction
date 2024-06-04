execute if entity @s[tag=42.portal_ss] as @e[tag=42.portal_temp] at @s run tp @s ~ ~ ~ 0 ~
execute if entity @s[tag=42.portal_ww] as @e[tag=42.portal_temp] at @s run tp @s ~ ~ ~ 90 ~
execute if entity @s[tag=42.portal_ww] run scoreboard players set @e[tag=42.portal_temp,tag=42.portal] 42.portal_x 1
execute if entity @s[tag=42.portal_nn] as @e[tag=42.portal_temp] at @s run tp @s ~ ~ ~ 180 ~
execute if entity @s[tag=42.portal_nn] run scoreboard players set @e[tag=42.portal_temp,tag=42.portal] 42.portal_x 2
execute if entity @s[tag=42.portal_ee] as @e[tag=42.portal_temp] at @s run tp @s ~ ~ ~ -90 ~
execute if entity @s[tag=42.portal_ee] run scoreboard players set @e[tag=42.portal_temp,tag=42.portal] 42.portal_x 3
scoreboard players set @e[tag=42.portal_temp,tag=42.portal] 42.portal_y -2
execute as @e[tag=42.portal_temp] at @s positioned ^ ^ ^.5 run tp @s ~ ~.5 ~ ~ -90