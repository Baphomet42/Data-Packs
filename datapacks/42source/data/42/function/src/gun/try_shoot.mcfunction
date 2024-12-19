# test for no ammo
execute unless items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{ammo:{current:{}}}}}}] run return run function 42:src/gun/shoot_fail

# update gun
function 42:src/gun/enum/shoot_sound

# update ammo
execute store result score #42.var.src.temp.ammo 42.obj.src.temp run data get storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.ammo.current.inverse
execute store result score #42.var.src.temp.maxammo 42.obj.src.temp run data get storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.ammo.max
scoreboard players add #42.var.src.temp.ammo 42.obj.src.temp 1
execute if score #42.var.src.temp.ammo 42.obj.src.temp >= #42.var.src.temp.maxammo 42.obj.src.temp run data remove storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.ammo.current
execute if score #42.var.src.temp.ammo 42.obj.src.temp < #42.var.src.temp.maxammo 42.obj.src.temp store result storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.ammo.current.inverse int 1 run scoreboard players get #42.var.src.temp.ammo 42.obj.src.temp
execute store result storage 42:src temp_gun.components.minecraft:damage int 1 run scoreboard players get #42.var.src.temp.ammo 42.obj.src.temp

# update cooldown
execute store result score #42.var.src.temp.t1 42.obj.src.temp run time query gametime
execute store result score #42.var.src.temp.t2 42.obj.src.temp run data get storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.cooldown.on_shoot
scoreboard players operation #42.var.src.temp.t1 42.obj.src.temp += #42.var.src.temp.t2 42.obj.src.temp
execute store result storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.cooldown.current.gametime int 1 run scoreboard players get #42.var.src.temp.t1 42.obj.src.temp

# summon bullet
execute anchored eyes positioned ^ ^-.25 ^.5 run summon item_display ~ ~ ~ {Tags:["42.tag.src.gun.bullet.marker","42.tag.src.new_spawn"],item:{id:netherite_block},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.0625f,.0625f,.0625f],translation:[0f,0f,0f]},teleport_duration:1}
execute if data storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.overrides.bullet_item run data modify entity @e[limit=1,type=item_display,tag=42.tag.src.new_spawn] item set from storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.overrides.bullet_item
data modify entity @e[limit=1,type=item_display,tag=42.tag.src.new_spawn] item.components.minecraft:custom_data set from storage 42:src temp_gun.components.minecraft:custom_data
rotate @e[limit=1,type=item_display,tag=42.tag.src.new_spawn] ~ ~
tag @e[limit=1,type=item_display,tag=42.tag.src.new_spawn] remove 42.tag.src.new_spawn

data modify entity c4a51956-8039-4eb2-a829-fa8c921f1c0a item.components set from storage 42:src temp_gun.components
item replace entity @s weapon.mainhand from entity c4a51956-8039-4eb2-a829-fa8c921f1c0a contents