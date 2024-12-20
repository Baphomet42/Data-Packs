scoreboard players remove @s 42.obj.src.gun.reload_time 1
execute if score @s 42.obj.src.gun.reload_time matches 1.. run return 0

function 42:src/gun/reload_stop
function 42:src/gun/enum/sound/reload_finish
data modify storage 42:src temp_gun.components.minecraft:damage set value 0
data modify storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.ammo.current.inverse set value 0

data modify entity c4a51956-8039-4eb2-a829-fa8c921f1c0a item.components set from storage 42:src temp_gun.components
item replace entity @s weapon.mainhand from entity c4a51956-8039-4eb2-a829-fa8c921f1c0a contents