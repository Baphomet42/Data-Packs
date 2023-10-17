#match blocks #42:portal_surface, portal/replace_wall, portal/set_dis, portal/read_block
scoreboard players set @s 42.portal_skin 0
execute if block ~ ~ ~ quartz_block run scoreboard players set @s 42.portal_skin 0
execute if block ~ ~ ~ smooth_quartz run scoreboard players set @s 42.portal_skin 1
execute if block ~ ~ ~ chiseled_quartz_block run scoreboard players set @s 42.portal_skin 2
execute if block ~ ~ ~ smooth_stone run scoreboard players set @s 42.portal_skin 3
execute if block ~ ~ ~ white_concrete run scoreboard players set @s 42.portal_skin 4
execute if block ~ ~ ~ calcite run scoreboard players set @s 42.portal_skin 5
execute if block ~ ~ ~ white_wool run scoreboard players set @s 42.portal_skin 6
execute if block ~ ~ ~ polished_diorite run scoreboard players set @s 42.portal_skin 7
execute if block ~ ~ ~ polished_andesite run scoreboard players set @s 42.portal_skin 8