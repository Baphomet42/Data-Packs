function 42:portal/tag_id

execute store result score #42.var.portal.dummy 42.obj.portal.temp if entity @a[tag=42.tag.portal.id]
execute if entity @s[tag=42.tag.portal.cube.held] unless score #42.var.portal.dummy 42.obj.portal.temp matches 1 run function 42:portal/cube/hold_stop