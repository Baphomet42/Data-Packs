#kill @e[tag=42.portal_gun_render,tag=42.portal_gun_render_tick2]
#tag @e[tag=42.portal_gun_render_tick] add 42.portal_gun_render_tick2
#tag @e[tag=42.portal_gun_render] add 42.portal_gun_render_tick
#execute as @e[tag=42.portal_gun_render_tick] at @s run data merge entity @s {block_state:{Name:smooth_quartz}}
#tag @e remove 42.portal_new_spawn
#execute anchored eyes run summon block_display ^-.3 ^-.4 ^.5 {Tags:["42.portal_gun_render","42.portal_new_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:air},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.125f,-.125f,-.125f],scale:[.25f,.25f,.5f]}}
#execute at @e[tag=42.portal_new_spawn] rotated as @s run tp @e[tag=42.portal_new_spawn] ~ ~ ~ ~ ~
#scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
#tag @e remove 42.portal_new_spawn