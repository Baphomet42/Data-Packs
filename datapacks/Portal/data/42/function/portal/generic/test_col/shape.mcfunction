tag @e remove 42.tag.portal.test
tag @e remove 42.tag.portal.test.this
tag @s add 42.tag.portal.test.this
summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.test"]}

execute as @e[tag=42.tag.portal.test] at @s run function 42:portal/generic/test_col/marker

tag @s remove 42.tag.portal.test.this
kill @e[tag=42.tag.portal.test]