execute store result score #cmdfeed1 42.obj.portal.vars run gamerule sendCommandFeedback
execute if score #cmdfeed1 42.obj.portal.vars matches 1 run gamerule sendCommandFeedback false
execute if score #cmdfeed1 42.obj.portal.vars matches 1 run scoreboard players set #cmdfeed2 42.obj.portal.vars 1
execute if score #cmdfeed2 42.obj.portal.vars matches 1 run schedule function 42:portal/cmdfeed2 200t replace