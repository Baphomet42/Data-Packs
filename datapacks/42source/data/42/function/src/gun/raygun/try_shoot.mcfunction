execute if items entity @s weapon.mainhand *[damage~{durability:0}] run return run playsound block.dispenser.fail player @a ~ ~ ~ .375 1.5

playsound minecraft:entity.allay.hurt player @a ~ ~ ~ 1 1.375
item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:-.0625}

execute anchored eyes positioned ^ ^-.25 ^.5 run summon item_display ~ ~ ~ {Tags:["42.tag.src.gun.bullet.marker","42.tag.src.gun.bullet.raygun","42.tag.src.new_spawn"],item:{id:slime_block},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.0625f,.0625f,.0625f],translation:[0f,0f,0f]},teleport_duration:1}
rotate @e[limit=1,type=item_display,tag=42.tag.src.new_spawn] ~ ~
tag @e[limit=1,type=item_display,tag=42.tag.src.new_spawn] remove 42.tag.src.new_spawn