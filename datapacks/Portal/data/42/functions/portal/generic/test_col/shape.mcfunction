tag @e remove 42.portal_test
tag @e remove 42.portal_test_this
tag @s add 42.portal_test_this
summon marker ~ ~ ~ {Tags:["42.portal_test"]}
scoreboard players set @e[type=!player,tag=42.portal_test] 42.datapack 3
#
execute as @e[tag=42.portal_test] at @s run function 42:portal/generic/test_col/marker
#
tag @s remove 42.portal_test_this
kill @e[tag=42.portal_test]