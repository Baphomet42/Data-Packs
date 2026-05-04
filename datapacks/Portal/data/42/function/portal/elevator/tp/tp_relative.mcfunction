kill 5067f261-1a31-48c5-b21c-a3810c23ea8b
execute at @s run summon marker ~ ~ ~ {Tags:["42.tag.summon"],UUID:[I;1348989537,439437509,-1306745983,203680395]}
data modify storage 42:portal tp_temp.player_pos set from entity 5067f261-1a31-48c5-b21c-a3810c23ea8b Pos
kill 5067f261-1a31-48c5-b21c-a3810c23ea8b

execute store result score #42.var.portal.dummy 42.obj.portal.var.x run data get storage 42:portal tp_temp.from_pos[0] 1000
execute store result score #42.var.portal.dummy 42.obj.portal.var.y run data get storage 42:portal tp_temp.from_pos[1] 1000
execute store result score #42.var.portal.dummy 42.obj.portal.var.z run data get storage 42:portal tp_temp.from_pos[2] 1000
execute store result score #42.var.portal.dummy2 42.obj.portal.var.x run data get storage 42:portal tp_temp.player_pos[0] 1000
execute store result score #42.var.portal.dummy2 42.obj.portal.var.y run data get storage 42:portal tp_temp.player_pos[1] 1000
execute store result score #42.var.portal.dummy2 42.obj.portal.var.z run data get storage 42:portal tp_temp.player_pos[2] 1000

scoreboard players operation #42.var.portal.dummy2 42.obj.portal.var.x -= #42.var.portal.dummy 42.obj.portal.var.x
scoreboard players operation #42.var.portal.dummy2 42.obj.portal.var.y -= #42.var.portal.dummy 42.obj.portal.var.y
scoreboard players operation #42.var.portal.dummy2 42.obj.portal.var.z -= #42.var.portal.dummy 42.obj.portal.var.z

scoreboard players set #42.var.portal.dummy2 42.obj.portal.yrot1 0

#execute if score #42.var.portal.dummy 42.obj.portal.yrot1 matches 1 run scoreboard players remove #42.var.portal.dummy2 42.obj.portal.yrot1 90
#execute if score #42.var.portal.dummy 42.obj.portal.yrot1 matches 2 run scoreboard players remove #42.var.portal.dummy2 42.obj.portal.yrot1 180
#execute if score #42.var.portal.dummy 42.obj.portal.yrot1 matches 3 run scoreboard players remove #42.var.portal.dummy2 42.obj.portal.yrot1 270

execute if score #42.var.portal.dummy 42.obj.portal.yrot2 matches 1 run scoreboard players add #42.var.portal.dummy2 42.obj.portal.yrot1 90
execute if score #42.var.portal.dummy 42.obj.portal.yrot2 matches 2 run scoreboard players add #42.var.portal.dummy2 42.obj.portal.yrot1 180
execute if score #42.var.portal.dummy 42.obj.portal.yrot2 matches 3 run scoreboard players add #42.var.portal.dummy2 42.obj.portal.yrot1 270

execute store result storage 42:portal tp_temp.rot int 1 run scoreboard players get #42.var.portal.dummy2 42.obj.portal.yrot1

execute store result storage 42:portal tp_temp.l double .001 run scoreboard players get #42.var.portal.dummy2 42.obj.portal.var.x
execute store result storage 42:portal tp_temp.u double .001 run scoreboard players get #42.var.portal.dummy2 42.obj.portal.var.y
execute store result storage 42:portal tp_temp.f double .001 run scoreboard players get #42.var.portal.dummy2 42.obj.portal.var.z

function 42:portal/elevator/tp/tp_relative_macro with storage 42:portal tp_temp