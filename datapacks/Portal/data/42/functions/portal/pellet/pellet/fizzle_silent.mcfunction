execute if entity @s[tag=42.portal_pellet_on] at @s as @e[tag=42.portal_pellet_catcher_on,limit=1,sort=nearest,distance=...5] at @s run function 42:portal/pellet/catcher/unpower
kill @s[tag=42.portal_pellet]