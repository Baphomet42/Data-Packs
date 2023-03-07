execute if block ~ ~ ~ #42:projectile_pass run function 42:xltt/odm/break
function 42:xltt/tag_id
execute unless entity @a[tag=42.xltt_id,distance=..100,nbt={SelectedItem:{tag:{odm:1b}}}] run tag @s add 42.odm_break
execute if entity @a[tag=42.xltt_id,distance=..100,nbt={Inventory:[{Slot:-106b,tag:{odm:1b}}]}] run tag @s remove 42.odm_break
execute if entity @s[tag=42.odm_break] run function 42:xltt/odm/break
tag @e remove 42.xltt_id