scoreboard players add @s 42.obj.portal.skin 1
execute unless score @s 42.obj.portal.skin matches 0..1 run scoreboard players set @s 42.obj.portal.skin 0

execute if score @s 42.obj.portal.skin matches 0 run data merge entity @s {text:{text:"\u274C",color:"red"},\
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.05f,-.515f,-.485f],scale:[3.75f,3.75f,3.75f]}}
execute if score @s 42.obj.portal.skin matches 1 run data merge entity @s {text:{text:"\u274C",color:"black"},\
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.05f,-.515f,-.485f],scale:[3.75f,3.75f,3.75f]}}