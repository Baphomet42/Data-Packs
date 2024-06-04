execute if block ~ ~ ~ #42:projectile_pass run function 42:xltt/odm/break
function 42:xltt/tag_id
execute unless entity @a[tag=42.xltt_id,distance=..100,nbt={SelectedItem:{components:{"minecraft:custom_data":{42xltt_odm:1b}}}}] run tag @s add 42.odm_break
execute if entity @a[tag=42.xltt_id,distance=..100,nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{42xltt_odm:1b}}}]}] run tag @s remove 42.odm_break
execute if entity @s[tag=42.odm_break] run function 42:xltt/odm/break
tag @e remove 42.xltt_id