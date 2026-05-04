scoreboard players set @s 42.obj.portal.pmotion.x 0
scoreboard players set @s 42.obj.portal.pmotion.y 0
scoreboard players operation @s 42.obj.portal.pmotion.z = #42.var.portal.dummy 42.obj.portal.temp
scoreboard players operation @s 42.obj.portal.pmotion.z *= #42.var.gen.const.neg_1 42.obj.portal.vars
function 42:portal/generic/motion/pmotion/launch