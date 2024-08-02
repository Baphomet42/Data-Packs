execute if score @s 42.portal_y matches -2 run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor replace #42:portal_surface
execute if score @s 42.portal_y matches 2 run fill ^ ^-1 ^ ^ ^ ^ iron_trapdoor[half=top] replace #42:portal_surface

execute if score @s 42.portal_y matches -2 run fill ^-1 ^-1 ^ ^-1 ^1 ^ smooth_quartz_stairs[facing=east] replace #42:portal_surface
execute if score @s 42.portal_y matches -2 run fill ^1 ^-1 ^ ^1 ^1 ^ smooth_quartz_stairs[facing=west] replace #42:portal_surface
execute if score @s 42.portal_y matches -2 run fill ^ ^1 ^ ^ ^1 ^ smooth_quartz_stairs[facing=south] replace #42:portal_surface
execute if score @s 42.portal_y matches 2 run fill ^-1 ^-1 ^ ^-1 ^1 ^ smooth_quartz_stairs[facing=east,half=top] replace #42:portal_surface
execute if score @s 42.portal_y matches 2 run fill ^1 ^-1 ^ ^1 ^1 ^ smooth_quartz_stairs[facing=west,half=top] replace #42:portal_surface
execute if score @s 42.portal_y matches 2 run fill ^ ^1 ^ ^ ^1 ^ smooth_quartz_stairs[facing=north,half=top] replace #42:portal_surface