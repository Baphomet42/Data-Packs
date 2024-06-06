tag @e remove 42.portal_test
tag @e remove 42.portal_test_x
tag @e remove 42.portal_test_y
tag @e remove 42.portal_test_z
summon marker ~ ~ ~ {Tags:["42.portal_test","42.portal_test_x"]}
summon marker ~ ~ ~ {Tags:["42.portal_test","42.portal_test_y"]}
summon marker ~ ~ ~ {Tags:["42.portal_test","42.portal_test_z"]}
scoreboard players set @e[type=!player,tag=42.portal_test] 42.datapack 3
#
$scoreboard players set @e[tag=42.portal_test_x] 42.portal_x $(dx)
$scoreboard players set @e[tag=42.portal_test_x] 42.portal_y $(dy)
$scoreboard players set @e[tag=42.portal_test_x] 42.portal_z $(dz)
data remove storage 42:portal temp
$data modify storage 42:portal temp.mode set value $(mode)
$data modify storage 42:portal temp.block set value $(block)
execute as @e[tag=42.portal_test_x] if score @s 42.portal_x matches ..-1 run scoreboard players set @s 42.portal_x 0
execute as @e[tag=42.portal_test_x] if score @s 42.portal_y matches ..-1 run scoreboard players set @s 42.portal_y 0
execute as @e[tag=42.portal_test_x] if score @s 42.portal_z matches ..-1 run scoreboard players set @s 42.portal_z 0
#
execute as @e[tag=42.portal_test_x] run scoreboard players operation @s 42.portal_u = @s 42.portal_x
execute as @e[tag=42.portal_test_x] at @s run function 42:portal/generic/find_all/x
#
kill @e[tag=42.portal_test]
data remove storage 42:portal temp