scoreboard players add @s[scores={42.obj.portal.cool=0..}] 42.obj.portal.cool 1
scoreboard players remove @s[scores={42.obj.portal.cool=..-1}] 42.obj.portal.cool 1
execute store result entity @s[scores={42.obj.portal.cool=0..}] Motion[0] double .001 run scoreboard players get @s 42.obj.portal.var.x
execute store result entity @s[scores={42.obj.portal.cool=0..}] Motion[2] double .001 run scoreboard players get @s 42.obj.portal.var.z
execute if score @s 42.obj.portal.cool matches 0.. run effect give @s resistance 1 127 true
execute unless entity @e[limit=1,tag=42.tag.portal.portal,distance=..1] run scoreboard players set @s[nbt={OnGround:true},scores={42.obj.portal.cool=10..}] 42.obj.portal.cool -1
tag @s[scores={42.obj.portal.cool=..-5}] remove 42.tag.portal.motion.tp