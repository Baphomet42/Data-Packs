scoreboard players operation #42.var.portal.dummy 42.obj.portal.var.x = @s 42.obj.portal.var.x
scoreboard players operation #42.var.portal.dummy 42.obj.portal.var.y = @s 42.obj.portal.var.y
scoreboard players operation #42.var.portal.dummy 42.obj.portal.var.z = @s 42.obj.portal.var.z

data modify storage 42:portal temp.Pos set from entity @s Pos
execute store result score @s 42.obj.portal.var.x run data get storage 42:portal temp.Pos[0] 1000
execute store result score @s 42.obj.portal.var.y run data get storage 42:portal temp.Pos[1] 1000
execute store result score @s 42.obj.portal.var.z run data get storage 42:portal temp.Pos[2] 1000
data remove storage 42:portal temp
scoreboard players operation @s 42.obj.portal.motion.x = @s 42.obj.portal.var.x
scoreboard players operation @s 42.obj.portal.motion.y = @s 42.obj.portal.var.y
scoreboard players operation @s 42.obj.portal.motion.z = @s 42.obj.portal.var.z

scoreboard players operation @s 42.obj.portal.motion.x -= #42.var.portal.dummy 42.obj.portal.var.x
scoreboard players operation @s 42.obj.portal.motion.y -= #42.var.portal.dummy 42.obj.portal.var.y
scoreboard players operation @s 42.obj.portal.motion.z -= #42.var.portal.dummy 42.obj.portal.var.z

#title @s actionbar [{score:{name:"@s",objective:"42.obj.portal.motion.x"}}," ",{score:{name:"@s",objective:"42.obj.portal.motion.y"}}," ",{score:{name:"@s",objective:"42.obj.portal.motion.z"}}]