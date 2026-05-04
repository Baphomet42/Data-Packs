execute unless score @s 42.obj.portal.pmotion.x matches -2147483648..2147483647 run scoreboard players set @s 42.obj.portal.pmotion.x 0
execute unless score @s 42.obj.portal.pmotion.y matches -2147483648..2147483647 run scoreboard players set @s 42.obj.portal.pmotion.y 0
execute unless score @s 42.obj.portal.pmotion.z matches -2147483648..2147483647 run scoreboard players set @s 42.obj.portal.pmotion.z 0

execute if score @s 42.obj.portal.pmotion.x matches -49..49 if score @s 42.obj.portal.pmotion.y matches -49..49 if score @s 42.obj.portal.pmotion.z matches -49..49 run return run function 42:portal/generic/motion/pmotion/ench/end

#tellraw @a ["Applying motion: [",{score:{name:"@s",objective:"42.obj.portal.pmotion.x"}},", ",{score:{name:"@s",objective:"42.obj.portal.pmotion.y"}},", ",{score:{name:"@s",objective:"42.obj.portal.pmotion.z"}},"]"]

scoreboard players set #42.var.portal.pmotion.x.6400 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.x.3200 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.x.1600 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.x.800 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.x.400 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.x.200 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.x.100 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.x.50 42.obj.portal.pmotion.start 0

scoreboard players set #42.var.portal.pmotion.y.6400 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.y.3200 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.y.1600 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.y.800 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.y.400 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.y.200 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.y.100 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.y.50 42.obj.portal.pmotion.start 0

scoreboard players set #42.var.portal.pmotion.z.6400 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.z.3200 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.z.1600 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.z.800 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.z.400 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.z.200 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.z.100 42.obj.portal.pmotion.start 0
scoreboard players set #42.var.portal.pmotion.z.50 42.obj.portal.pmotion.start 0

scoreboard players operation #42.var.portal.pmotion 42.obj.portal.pmotion.start = @s 42.obj.portal.pmotion.x
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 6400.. run scoreboard players set #42.var.portal.pmotion.x.6400 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 6400.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 6400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-6400 run scoreboard players set #42.var.portal.pmotion.x.6400 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-6400 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 6400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 3200.. run scoreboard players set #42.var.portal.pmotion.x.3200 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 3200.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 3200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-3200 run scoreboard players set #42.var.portal.pmotion.x.3200 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-3200 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 3200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 1600.. run scoreboard players set #42.var.portal.pmotion.x.1600 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 1600.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 1600
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-1600 run scoreboard players set #42.var.portal.pmotion.x.1600 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-1600 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 1600
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 800.. run scoreboard players set #42.var.portal.pmotion.x.800 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 800.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 800
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-800 run scoreboard players set #42.var.portal.pmotion.x.800 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-800 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 800
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 400.. run scoreboard players set #42.var.portal.pmotion.x.400 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 400.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-400 run scoreboard players set #42.var.portal.pmotion.x.400 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-400 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 200.. run scoreboard players set #42.var.portal.pmotion.x.200 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 200.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-200 run scoreboard players set #42.var.portal.pmotion.x.200 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-200 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 100.. run scoreboard players set #42.var.portal.pmotion.x.100 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 100.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 100
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-100 run scoreboard players set #42.var.portal.pmotion.x.100 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-100 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 100
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 50.. run scoreboard players set #42.var.portal.pmotion.x.50 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 50.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 50
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-50 run scoreboard players set #42.var.portal.pmotion.x.50 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-50 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 50

scoreboard players operation #42.var.portal.pmotion 42.obj.portal.pmotion.start = @s 42.obj.portal.pmotion.y
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 6400.. run scoreboard players set #42.var.portal.pmotion.y.6400 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 6400.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 6400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-6400 run scoreboard players set #42.var.portal.pmotion.y.6400 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-6400 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 6400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 3200.. run scoreboard players set #42.var.portal.pmotion.y.3200 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 3200.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 3200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-3200 run scoreboard players set #42.var.portal.pmotion.y.3200 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-3200 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 3200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 1600.. run scoreboard players set #42.var.portal.pmotion.y.1600 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 1600.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 1600
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-1600 run scoreboard players set #42.var.portal.pmotion.y.1600 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-1600 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 1600
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 800.. run scoreboard players set #42.var.portal.pmotion.y.800 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 800.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 800
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-800 run scoreboard players set #42.var.portal.pmotion.y.800 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-800 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 800
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 400.. run scoreboard players set #42.var.portal.pmotion.y.400 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 400.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-400 run scoreboard players set #42.var.portal.pmotion.y.400 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-400 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 200.. run scoreboard players set #42.var.portal.pmotion.y.200 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 200.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-200 run scoreboard players set #42.var.portal.pmotion.y.200 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-200 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 100.. run scoreboard players set #42.var.portal.pmotion.y.100 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 100.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 100
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-100 run scoreboard players set #42.var.portal.pmotion.y.100 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-100 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 100
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 50.. run scoreboard players set #42.var.portal.pmotion.y.50 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 50.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 50
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-50 run scoreboard players set #42.var.portal.pmotion.y.50 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-50 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 50

scoreboard players operation #42.var.portal.pmotion 42.obj.portal.pmotion.start = @s 42.obj.portal.pmotion.z
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 6400.. run scoreboard players set #42.var.portal.pmotion.z.6400 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 6400.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 6400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-6400 run scoreboard players set #42.var.portal.pmotion.z.6400 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-6400 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 6400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 3200.. run scoreboard players set #42.var.portal.pmotion.z.3200 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 3200.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 3200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-3200 run scoreboard players set #42.var.portal.pmotion.z.3200 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-3200 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 3200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 1600.. run scoreboard players set #42.var.portal.pmotion.z.1600 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 1600.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 1600
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-1600 run scoreboard players set #42.var.portal.pmotion.z.1600 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-1600 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 1600
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 800.. run scoreboard players set #42.var.portal.pmotion.z.800 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 800.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 800
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-800 run scoreboard players set #42.var.portal.pmotion.z.800 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-800 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 800
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 400.. run scoreboard players set #42.var.portal.pmotion.z.400 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 400.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-400 run scoreboard players set #42.var.portal.pmotion.z.400 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-400 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 400
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 200.. run scoreboard players set #42.var.portal.pmotion.z.200 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 200.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-200 run scoreboard players set #42.var.portal.pmotion.z.200 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-200 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 200
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 100.. run scoreboard players set #42.var.portal.pmotion.z.100 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 100.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 100
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-100 run scoreboard players set #42.var.portal.pmotion.z.100 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-100 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 100
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 50.. run scoreboard players set #42.var.portal.pmotion.z.50 42.obj.portal.pmotion.start 1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches 50.. run scoreboard players remove #42.var.portal.pmotion 42.obj.portal.pmotion.start 50
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-50 run scoreboard players set #42.var.portal.pmotion.z.50 42.obj.portal.pmotion.start -1
execute if score #42.var.portal.pmotion 42.obj.portal.pmotion.start matches ..-50 run scoreboard players add #42.var.portal.pmotion 42.obj.portal.pmotion.start 50

kill @e[type=marker,tag=42.tag.portal.pmotion]
execute at @s run summon marker ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.pmotion"],CustomName:"42portal",CustomNameVisible:false}
execute at @s run rotate @e[type=marker,tag=42.tag.portal.pmotion,limit=1] ~ ~
rotate @s 0 0