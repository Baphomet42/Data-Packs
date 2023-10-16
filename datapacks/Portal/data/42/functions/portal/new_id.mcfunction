scoreboard players add 42.portal 42.portal_id 1
scoreboard players operation @s 42.portal_id = 42.portal 42.portal_id
execute if score 42.portal 42.portal_id matches 2000000000.. run tellraw @a {"text":"42datapack error (3): [id] overflow warning","color":"red"}