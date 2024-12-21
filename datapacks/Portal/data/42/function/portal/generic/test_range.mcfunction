tag @e remove 42.tag.portal.test
tag @e remove 42.tag.portal.test.x
tag @e remove 42.tag.portal.test.y
tag @e remove 42.tag.portal.test.z
summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.test","42.tag.portal.test.x"]}
summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.test","42.tag.portal.test.y"]}
summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.test","42.tag.portal.test.z"]}
scoreboard players set #42.var.portal.dummy 42.obj.portal.temp -1

$scoreboard players set @e[tag=42.tag.portal.test.x] 42.obj.portal.var.x $(dx)
$scoreboard players set @e[tag=42.tag.portal.test.x] 42.obj.portal.var.y $(dy)
$scoreboard players set @e[tag=42.tag.portal.test.x] 42.obj.portal.var.z $(dz)
data remove storage 42:portal temp
$data modify storage 42:portal temp.mode set value $(mode)
$data modify storage 42:portal temp.block set value $(block)
execute as @e[tag=42.tag.portal.test.x] if score @s 42.obj.portal.var.x matches ..-1 run scoreboard players set @s 42.obj.portal.var.x 0
execute as @e[tag=42.tag.portal.test.x] if score @s 42.obj.portal.var.y matches ..-1 run scoreboard players set @s 42.obj.portal.var.y 0
execute as @e[tag=42.tag.portal.test.x] if score @s 42.obj.portal.var.z matches ..-1 run scoreboard players set @s 42.obj.portal.var.z 0

execute as @e[tag=42.tag.portal.test.x] run scoreboard players operation @s 42.obj.portal.var.u = @s 42.obj.portal.var.x
execute as @e[tag=42.tag.portal.test.x] at @s run function 42:portal/generic/test_range/x

execute if score @e[tag=42.tag.portal.test.x,limit=1] 42.obj.portal.var.u matches ..-10 run scoreboard players set #42.var.portal.dummy 42.obj.portal.temp 1
execute unless score @e[tag=42.tag.portal.test.x,limit=1] 42.obj.portal.var.u matches ..-10 run scoreboard players set #42.var.portal.dummy 42.obj.portal.temp 0
kill @e[tag=42.tag.portal.test]
data remove storage 42:portal temp