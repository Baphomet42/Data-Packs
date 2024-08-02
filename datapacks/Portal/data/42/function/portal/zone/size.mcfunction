$scoreboard players set @s 42.portal_y $(y)

data merge entity @s {transformation:{translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]}}
execute if score @s 42.portal_y matches 1 run data merge entity @s {transformation:{translation:[-1.5f,0f,-1.5f],scale:[3f,3f,3f]}}
execute if score @s 42.portal_y matches 2 run data merge entity @s {transformation:{translation:[-2.5f,0f,-2.5f],scale:[5f,5f,5f]}}