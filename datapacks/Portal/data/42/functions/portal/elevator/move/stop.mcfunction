effect clear @e[tag=42.portal_temp] levitation
effect clear @e[tag=42.portal_temp] slow_falling
execute if score @s 42.portal_x matches 1.. as @e[tag=42.portal_temp,tag=!42.portal_elevator] at @s run tp ~ ~.5 ~
data modify entity @s NoAI set value 1b
function 42:portal/elevator/move/snap_end
tag @s add 42.portal_elevator_wait_door
scoreboard players set @s 42.portal_time 230