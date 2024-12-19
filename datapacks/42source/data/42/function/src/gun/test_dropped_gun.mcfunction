tag @s add 42.tag.src.gun.scanned_item_entity
execute on origin unless entity @s[tag=42.tag.src.temp.stop_holding.player] run return 0
execute store result score @s 42.obj.src.gun.equip_instance run data get entity @s Item.components.minecraft:custom_data.42components.src.gun.equip_instance
execute if score @s 42.obj.src.gun.equip_instance = @a[tag=42.tag.src.temp.stop_holding.player,limit=1] 42.obj.src.gun.equip_instance run tag @s[nbt={Age:0s}] add 42.tag.src.gun.entity_is_gun