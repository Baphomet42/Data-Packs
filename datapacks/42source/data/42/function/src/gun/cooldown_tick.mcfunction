scoreboard players remove @s 42.obj.src.gun.cooldown_time 1
execute unless entity @s[tag=42.tag.src.gun.player.swap_cooldown] run return 0

scoreboard players reset @s 42.obj.src.gun.use_time
execute store result storage 42:src temp_gun.components.minecraft:custom_data.42data.src.gun.cooldown.time_equipped int 1 run time query gametime
data modify entity c4a51956-8039-4eb2-a829-fa8c921f1c0a item.components set from storage 42:src temp_gun.components
item replace entity @s weapon.mainhand from entity c4a51956-8039-4eb2-a829-fa8c921f1c0a contents

execute if score @s 42.obj.src.gun.cooldown_time matches ..0 run return run tag @s remove 42.tag.src.gun.player.swap_cooldown