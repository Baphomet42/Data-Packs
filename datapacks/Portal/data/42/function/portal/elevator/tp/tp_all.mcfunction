data remove storage 42:portal tp_temp
tag @e remove 42.tag.portal.elevator.this.from
tag @e remove 42.tag.portal.elevator.this.to

tag @s add 42.tag.portal.elevator.this.from
execute as @e[tag=42.tag.portal.elevator,tag=!42.tag.portal.id] if score @s 42.obj.portal.id = @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator,limit=1] 42.obj.portal.xrot2 run tag @s add 42.tag.portal.elevator.this.to

execute store result storage 42:portal tp_temp.x double .001 run scoreboard players get @s 42.obj.portal.var.u
execute store result storage 42:portal tp_temp.y double .001 run scoreboard players get @s 42.obj.portal.var.v
execute store result storage 42:portal tp_temp.z double .001 run scoreboard players get @s 42.obj.portal.var.w

data modify storage 42:portal tp_temp.from_pos set from entity @e[limit=1,tag=42.tag.portal.elevator.this.from] Pos
scoreboard players operation #42.var.portal.dummy 42.obj.portal.yrot1 = @s 42.obj.portal.yrot1
scoreboard players operation #42.var.portal.dummy 42.obj.portal.yrot2 = @s 42.obj.portal.yrot2

execute unless entity @e[limit=1,tag=42.tag.portal.elevator.this.to] as @a[tag=42.tag.portal.temp] at @s run function 42:portal/elevator/tp/tp_exact_macro with storage 42:portal tp_temp
execute if entity @e[limit=1,tag=42.tag.portal.elevator.this.to] as @a[tag=42.tag.portal.temp] at @s run function 42:portal/elevator/tp/tp_relative
execute as @e[tag=42.tag.portal.elevator.this.to] at @s run function 42:portal/elevator/tp/dest

tag @e remove 42.tag.portal.elevator.this.to
tag @s remove 42.tag.portal.elevator.this.from
data remove storage 42:portal tp_temp
function 42:portal/tag_id