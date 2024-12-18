# test for no ammo
execute unless items entity @s[tag=42.tag.src.gun.player.use] weapon.mainhand *[custom_data~{42components:{src:{gun:{ammo:{current:{}}}}}}] run playsound block.vault.insert_item_fail player @a ~ ~ ~ .375 1.75
execute unless items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{ammo:{current:{}}}}}}] run return run function 42:src/gun/reload

# shoot effects
tag @s remove 42.tag.src.gun.player.use
function 42:src/gun/enum/shoot_sound

# update gun
summon item_display ~ ~ ~ {Tags:["42.tag.src.gun.temp_display"],view_range:0f,UUID:[I;-995813034,-2143727950,-1473643892,-1843454966]}
item replace entity c4a51956-8039-4eb2-a829-fa8c921f1c0a contents from entity @s weapon.mainhand
data modify storage 42:src temp.components set from entity c4a51956-8039-4eb2-a829-fa8c921f1c0a item.components

# update ammo
execute store result score #42.var.src.temp.ammo 42.obj.src.temp run data get storage 42:src temp.components.minecraft:custom_data.42components.src.gun.ammo.current.inverse
execute store result score #42.var.src.temp.maxammo 42.obj.src.temp run data get storage 42:src temp.components.minecraft:custom_data.42components.src.gun.ammo.max
scoreboard players add #42.var.src.temp.ammo 42.obj.src.temp 1
execute if score #42.var.src.temp.ammo 42.obj.src.temp >= #42.var.src.temp.maxammo 42.obj.src.temp run data remove storage 42:src temp.components.minecraft:custom_data.42components.src.gun.ammo.current
execute if score #42.var.src.temp.ammo 42.obj.src.temp < #42.var.src.temp.maxammo 42.obj.src.temp store result storage 42:src temp.components.minecraft:custom_data.42components.src.gun.ammo.current.inverse int 1 run scoreboard players get #42.var.src.temp.ammo 42.obj.src.temp
execute store result storage 42:src temp.components.minecraft:damage int 1 run scoreboard players get #42.var.src.temp.ammo 42.obj.src.temp

# update cooldown
data modify storage 42:src temp.components.minecraft:custom_data.42components.src.gun.cooldown.current.time set from storage 42:src temp.components.minecraft:custom_data.42components.src.gun.cooldown.delay

data modify entity c4a51956-8039-4eb2-a829-fa8c921f1c0a item.components set from storage 42:src temp.components
item replace entity @s weapon.mainhand from entity c4a51956-8039-4eb2-a829-fa8c921f1c0a contents
kill c4a51956-8039-4eb2-a829-fa8c921f1c0a
data remove storage 42:src temp

# summon bullet
execute anchored eyes positioned ^ ^-.25 ^.5 run summon item_display ~ ~ ~ {Tags:["42.tag.src.gun.bullet.marker","42.tag.src.new_spawn"],item:{id:heavy_core},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.125f,.125f,.125f],translation:[0f,.03125f,0f]},teleport_duration:1}
function 42:src/gun/enum/setup_bullet
rotate @e[limit=1,type=item_display,tag=42.tag.src.new_spawn] ~ ~
tag @e[limit=1,type=item_display,tag=42.tag.src.new_spawn] remove 42.tag.src.new_spawn