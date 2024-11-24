scoreboard players add #42.var.portal.dummy 42.obj.portal.id 1
scoreboard players operation @s 42.obj.portal.id = #42.var.portal.dummy 42.obj.portal.id
execute if score #42.var.portal.dummy 42.obj.portal.id matches 2000000000.. run tellraw @a {"text":"42datapack error (3): [id] overflow warning","color":"red"}