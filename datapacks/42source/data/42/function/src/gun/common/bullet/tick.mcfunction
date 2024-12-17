scoreboard players add @s 42.obj.src.time 1
execute if score @s 42.obj.src.time matches 60.. run kill @s

execute if entity @s[tag=42.tag.src.gun.bullet.raygun] run return run function 42:src/gun/raygun/bullet/tick

particle ash ~ ~ ~ 0 0 0 1 1 normal
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 if block ~ ~ ~ #42:projectile_pass run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^.3 unless block ~ ~ ~ #42:projectile_pass run function 42:src/gun/common/bullet/hit_block