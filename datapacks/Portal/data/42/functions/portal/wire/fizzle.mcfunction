scoreboard players operation 42.portal 42.portal_temp = @s[tag=42.portal_wire] 42.portal_link
execute as @e[tag=42.portal_wire] if score @s 42.portal_link = 42.portal 42.portal_temp run kill @s