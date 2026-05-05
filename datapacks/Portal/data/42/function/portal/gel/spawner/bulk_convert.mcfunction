data modify storage 42:portal temp.bulk_convert_spawner set value {}

execute at @s as @e[tag=42.tag.portal.gel.surface,distance=..10] run function 42:portal/gel/spawner/new
execute at @s as @e[tag=42.tag.portal.gel.spawner,distance=..10] run function 42:portal/gel/spawner/hide

data remove storage 42:portal temp