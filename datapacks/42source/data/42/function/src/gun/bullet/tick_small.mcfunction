function 42:src/gun/bullet/move/small_bullet
execute unless items entity @s contents *[custom_data~{42data:{src:{gun:{flags:{slow_bullet:{}}}}}}] run function 42:src/gun/bullet/move/small_bullet
execute if items entity @s contents *[custom_data~{42data:{src:{gun:{flags:{fast_bullet:{}}}}}}] run function 42:src/gun/bullet/move/small_bullet

execute at @s positioned ^ ^ ^.3 unless block ~ ~ ~ #42:src/gun/small_bullet_pass run function 42:src/gun/bullet/hit_block