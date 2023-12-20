tag @s remove 42.portal_temp
execute if entity @s[tag=42.portal_pellet_catcher_nolaser] run tag @s add 42.portal_temp
tag @s add 42.portal_pellet_catcher_nolaser
execute if entity @s[tag=42.portal_temp] run tag @s remove 42.portal_pellet_catcher_nolaser