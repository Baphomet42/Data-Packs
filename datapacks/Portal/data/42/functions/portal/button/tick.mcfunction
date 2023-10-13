function 42:portal/tag_id
tag @s remove 42.portal_btn_on
execute unless entity @s[tag=42.portal_btn_cube] positioned ~-.5 ~-.625 ~-.5 if entity @a[dx=0,dy=0,dz=0,gamemode=!spectator,limit=1] run tag @s add 42.portal_btn_on
execute positioned ~-.5 ~-.625 ~-.5 if entity @e[dx=0,dy=0,dz=0,tag=42.portal_cube_tp,tag=!42.portal_turret,limit=1] run tag @s add 42.portal_btn_on
execute if entity @s[tag=!42.portal_btn_cube] run function 42:portal/button/effect
execute if entity @s[tag=42.portal_btn_cube] run function 42:portal/button/effect_cube
tag @s[tag=42.portal_btn_on] add 42.portal_btn_on2
tag @s[tag=!42.portal_btn_on] remove 42.portal_btn_on2
execute if entity @s[tag=42.portal_btn_on] positioned ~-.5 ~-.88 ~-.5 as @e[dx=0,dy=0,dz=0,tag=42.portal_cube_tp] at @s run tp @s ~ ~.1875 ~
tag @e remove 42.portal_id