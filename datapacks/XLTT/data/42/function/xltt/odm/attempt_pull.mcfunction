function 42:xltt/tag_id
execute if entity @s[gamemode=!spectator,nbt={abilities:{flying:0b}}] if entity @e[tag=42.odm_wire,tag=42.odm_hit,tag=42.xltt_id,distance=..100] run function 42:xltt/odm/pull
tag @e remove 42.xltt_id