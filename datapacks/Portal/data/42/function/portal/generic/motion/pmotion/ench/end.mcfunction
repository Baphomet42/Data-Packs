execute rotated as @e[type=marker,tag=42.tag.portal.pmotion,limit=1] run rotate @s ~ ~
kill @e[type=marker,tag=42.tag.portal.pmotion]

item modify entity @s armor.body {function:"set_enchantments",enchantments:{"42:portal/long_fall_boots":0}}
execute if items entity @s armor.body \
    *[custom_data~{42data:{delete_after_ench:true}},\
    !enchantments|enchantments={}|enchantments={"minecraft:binding_curse":1}|enchantments={"minecraft:vanishing_curse":1}|enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}\
    ] run item replace entity @s armor.body with air

scoreboard players reset @s 42.obj.portal.pmotion.start
scoreboard players reset @s 42.obj.portal.pmotion.x
scoreboard players reset @s 42.obj.portal.pmotion.y
scoreboard players reset @s 42.obj.portal.pmotion.z