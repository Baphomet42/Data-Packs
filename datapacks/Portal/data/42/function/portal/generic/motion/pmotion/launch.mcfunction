execute unless items entity @s armor.body * run item replace entity @s armor.body with \
    poisonous_potato[!food,!consumable,max_stack_size=1,\
    equippable={slot:"body",equip_sound:"minecraft:intentionally_empty",dispensable:false,swappable:false,damage_on_hurt:false,equip_on_interact:false},\
    enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},\
    item_name="Long Fall Boots",item_model="minecraft:netherite_boots",\
    custom_data={42data:{datapack:{},delete_after_ench:true}}]

execute unless score @s 42.obj.portal.pmotion.x matches -2147483648..2147483647 run scoreboard players set @s 42.obj.portal.pmotion.x 0
execute unless score @s 42.obj.portal.pmotion.y matches -2147483648..2147483647 run scoreboard players set @s 42.obj.portal.pmotion.y 0
execute unless score @s 42.obj.portal.pmotion.z matches -2147483648..2147483647 run scoreboard players set @s 42.obj.portal.pmotion.z 0
scoreboard players operation @s 42.obj.portal.motion.x = @s 42.obj.portal.pmotion.x
scoreboard players operation @s 42.obj.portal.motion.y = @s 42.obj.portal.pmotion.y
scoreboard players operation @s 42.obj.portal.motion.z = @s 42.obj.portal.pmotion.z

function 42:portal/generic/motion/start
item modify entity @s armor.body {function:"set_enchantments",enchantments:{"42:portal/long_fall_boots":1}}
scoreboard players set @s 42.obj.portal.pmotion.start 1