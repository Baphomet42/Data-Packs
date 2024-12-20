function 42:src/gun/bullet/move/large_bullet
execute unless items entity @s contents *[custom_data~{42components:{src:{gun:{flags:{slow_bullet:{}}}}}}] run function 42:src/gun/bullet/move/large_bullet
execute if items entity @s contents *[custom_data~{42components:{src:{gun:{flags:{fast_bullet:{}}}}}}] run function 42:src/gun/bullet/move/large_bullet

execute at @s positioned ^ ^ ^.3 unless block ~ ~ ~ #42:src/gun/large_bullet_pass run function 42:src/gun/bullet/hit_block