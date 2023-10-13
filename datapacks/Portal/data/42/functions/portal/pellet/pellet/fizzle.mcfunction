execute if entity @s[tag=42.portal_pellet_on] at @s as @e[tag=42.portal_pellet_catcher_on,limit=1,sort=nearest,distance=...5] at @s run function 42:portal/pellet/catcher/unpower
playsound minecraft:entity.warden.attack_impact neutral @a ~ ~ ~ 3 .5
particle minecraft:firework ~ ~ ~ .25 .25 .25 .05 20 force
particle flash
kill @s[tag=42.portal_pellet]