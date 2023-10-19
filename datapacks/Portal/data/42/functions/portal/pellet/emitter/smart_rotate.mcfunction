scoreboard players set @s 42.portal_z -1
execute unless block ~-1 ~ ~ #42:portal_bullet_pass run scoreboard players set @s 42.portal_z 4
execute unless block ~1 ~ ~ #42:portal_bullet_pass run scoreboard players set @s 42.portal_z 3
execute unless block ~ ~ ~1 #42:portal_bullet_pass run scoreboard players set @s 42.portal_z 2
execute unless block ~ ~ ~-1 #42:portal_bullet_pass run scoreboard players set @s 42.portal_z 1
execute unless block ~ ~1 ~ #42:portal_bullet_pass run scoreboard players set @s 42.portal_z 0
execute unless block ~ ~-1 ~ #42:portal_bullet_pass run scoreboard players set @s 42.portal_z -1
function 42:portal/pellet/emitter/rotate