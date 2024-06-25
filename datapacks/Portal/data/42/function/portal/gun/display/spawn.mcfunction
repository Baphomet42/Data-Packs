tag @e remove 42.portal_new_spawn
execute anchored eyes positioned ^-.4 ^-.5 ^.8 run summon block_display ~ ~ ~ \
    {Tags:["42.portal_new_spawn"],block_state:{Name:smooth_quartz},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.25f,.25f,.5f],translation:[-.125f,-.125f,-.6f]},interpolation_duration:0,teleport_duration:1,Passengers:[\
    {id:interaction,Tags:["42.portal_new_spawn","42.portal_gun_display"],interaction:{player:[I;0,0,0,0],timestamp:0},width:0,height:0},\
    {id:block_display,Tags:["42.portal_new_spawn"],block_state:{Name:black_stained_glass},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.125f,.125f,.225f],translation:[-.0625f,-.0625f,-.1f]},interpolation_duration:0,teleport_duration:1},\
    {id:block_display,Tags:["42.portal_new_spawn"],block_state:{Name:smooth_quartz},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.225f,.0375f,.225f],translation:[-.1125f,-.1f,.05f]},interpolation_duration:0,teleport_duration:1},\
    {id:block_display,Tags:["42.portal_new_spawn"],block_state:{Name:black_concrete},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.15f,.15f,.1f],translation:[-.075f,-.075f,.125f]},interpolation_duration:0,teleport_duration:1},\
    {id:block_display,Tags:["42.portal_new_spawn"],block_state:{Name:black_concrete},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.125f,.125f,.0625f],translation:[-.0625f,-.0625f,.225f]},interpolation_duration:0,teleport_duration:1},\
    {id:block_display,Tags:["42.portal_new_spawn"],block_state:{Name:gray_stained_glass},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.05f,.02f,.05f],translation:[-.025f,.125f,-.35f]},interpolation_duration:0,teleport_duration:1},\
    {id:block_display,Tags:["42.portal_new_spawn"],block_state:{Name:black_concrete},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[.04f,.0075f,.04f],translation:[-.02f,.125f,-.345f]},interpolation_duration:0,teleport_duration:1}\
    ]}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
data modify entity @e[tag=42.portal_gun_display,tag=42.portal_new_spawn,limit=1] interaction.player set from entity @s UUID
execute anchored eyes positioned ^-.4 ^-.5 ^.8 run tp @e[tag=42.portal_new_spawn] ~ ~ ~ ~ ~
tag @e remove 42.portal_new_spawn