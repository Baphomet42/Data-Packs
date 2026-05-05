tag @e remove 42.tag.portal.new_spawn
summon block_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.zone","42.tag.portal.tags.has_tick","42.tag.portal.zone.group"],CustomNameVisible:false,CustomName:"Zone",block_state:{Name:"minecraft:ice"},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-1.5f],scale:[3f,3f,3f]}}
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.lvl $(lvl)
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.xrot1 $(xrot1)
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.xrot2 $(xrot2)
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.yrot1 $(yrot1)
$scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.yrot2 $(yrot2)
$scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id $(id)
$execute as @e[tag=42.tag.portal.new_spawn] run rotate @s $(rotation_0) $(rotation_1)

$execute as @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] at @s run function 42:portal/zone/mode {x:$(var_x)}
$execute as @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] at @s run function 42:portal/zone/size {y:$(var_y)}

execute if data storage 42:portal loader.temp_entity.tag_has_spawn run tag @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] add 42.tag.portal.zone.has_spawn
execute if data storage 42:portal loader.temp_entity.tag_has_fizzle run tag @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] add 42.tag.portal.zone.has_fizzle
execute if data storage 42:portal loader.temp_entity.tag_grill run tag @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] add 42.tag.portal.zone.grill
execute if data storage 42:portal loader.temp_entity.tag_checkpoint run tag @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] add 42.tag.portal.zone.checkpoint

execute if data storage 42:portal loader.temp_entity.tag_show as @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] at @s run function 42:portal/zone/show
execute unless data storage 42:portal loader.temp_entity.tag_show as @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] at @s run function 42:portal/zone/hide
tag @e remove 42.tag.portal.new_spawn