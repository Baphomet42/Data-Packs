scoreboard players add @s 42.portal_skin 1
execute if score @s 42.portal_skin matches 2.. run scoreboard players set @s 42.portal_skin 0
#
execute if score @s 42.portal_skin matches 0 as @e[tag=42.portal_id,tag=42.portal_cube_dis] run data merge entity @s {item:{id:player_head,Count:1,tag:{SkullOwner:{Id:[I;-1070785282,611796448,-1418973103,2041260240],Name:"Weighted Storage Cube",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmM3ZTdmZTUzM2Y2MDJkZmQ4MDNiNzZiNmQwMDIyMTk2YTcxOWNlYjIxMzcxZmVlY2E0MDY3MmZhNGIxMWY2ZCJ9fX0="}]}}}}}
execute if score @s 42.portal_skin matches 1 as @e[tag=42.portal_id,tag=42.portal_cube_dis] run data merge entity @s {item:{id:player_head,Count:1,tag:{SkullOwner:{Id:[I;436613260,-840088697,-1113475130,-1109859317],Name:"Old Storage Cube",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDFmZDA1YmU4M2ViYjZiZDY5OWIxZjQxYjJjYWQ5NjgxNmM4MmM2ZTBhN2E4YWM4OGU1ZDkwNmVkNGVmNjA0OSJ9fX0="}]}}}}}