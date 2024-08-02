tag @e remove 42.portal_cube_spawn
#normal
execute if entity @s[tag=42.portal_spawn_cube1] run summon pig ~ ~ ~ {Tags:["42.portal_cube_tp","42.portal_cube_size1","42.portal_cube_weighted","42.portal_cube1","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"Weighted Storage Cube"}',Invulnerable:1,DeathLootTable:"minecraft:empty",Silent:1,active_effects:[{id:"invisibility",duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:-127d}]}
execute if entity @s[tag=42.portal_spawn_cube1] run summon armor_stand ~ ~ ~ {Tags:["42.portal_cube","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',Marker:1,Invisible:1,Small:1,DisabledSlots:16191,Passengers:[{id:interaction,Tags:["42.portal_cube_hit","42.portal_cube_spawn"],width:1.01,height:1.005,response:1}]}
execute if entity @s[tag=42.portal_spawn_cube1] run summon armor_stand ~ ~ ~ {Tags:["42.portal_cube_display","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',Marker:1,Invisible:1,Small:1,DisabledSlots:16191,Passengers:[\
    {id:shulker,Tags:["42.portal_cube_col","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',NoAI:1,Invulnerable:1,Silent:1,DeathLootTable:"minecraft:empty",active_effects:[{id:"invisibility",duration:-1,show_particles:0b}]},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_stone},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.40625f,.09375f,-.40625f],scale:[.8125f,.8125f,.8125f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:bottom,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:bottom,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,0f,-.5f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:top,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,.625f,-.5f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:top,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,.625f,-.5f],scale:[.375f,.375f,.375f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:bottom,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,.125f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:bottom,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,0f,.125f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:top,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,.625f,.125f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:top,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,.625f,.125f],scale:[.375f,.375f,.375f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn","42.portal_cube_color"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:light_blue_concrete_powder},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,.078125f,-.25f],scale:[.5f,.84375f,.5f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn","42.portal_cube_color"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:light_blue_concrete_powder},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,.25f,-.421875f],scale:[.5f,.5f,.84375f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn","42.portal_cube_color"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:light_blue_concrete_powder},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.421875f,.25f,-.25f],scale:[.84375f,.5f,.5f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.15625f,.0625f,-.15625f],scale:[.3125f,.875f,.3125f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.15625f,.34375f,-.4375f],scale:[.3125f,.3125f,.875f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.4375f,.34375f,-.15625f],scale:[.875f,.3125f,.3125f]}},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u267B","color":"#555555"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,-.2f,.9375f],scale:[1.333f,1.333f,1.333f]},Rotation:[0f,-90f]},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u267B","color":"#555555"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,-.2f,-.0625f],scale:[1.333f,1.333f,1.333f]},Rotation:[0f,90f]},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u267B","color":"#555555"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,.3f,.4375f],scale:[1.333f,1.333f,1.333f]}},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u267B","color":"#555555"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,.3f,.4375f],scale:[1.333f,1.333f,1.333f]},Rotation:[90f,0f]},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u267B","color":"#555555"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,.3f,.4375f],scale:[1.333f,1.333f,1.333f]},Rotation:[180f,0f]},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u267B","color":"#555555"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,.3f,.4375f],scale:[1.333f,1.333f,1.333f]},Rotation:[-90f,0f]},\
    {id:item_display,Tags:["42.portal_cube_dis","42.portal_cube_dis_old","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',item:{id:player_head,components:{profile:{properties:[{name:textures,value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDFmZDA1YmU4M2ViYjZiZDY5OWIxZjQxYjJjYWQ5NjgxNmM4MmM2ZTBhN2E4YWM4OGU1ZDkwNmVkNGVmNjA0OSJ9fX0="}]}}},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.975f,0f],scale:[1.901f,1.901f,1.901f]}}]}
#companion
execute if entity @s[tag=42.portal_spawn_cube2] run summon pig ~ ~ ~ {Tags:["42.portal_cube_tp","42.portal_cube_size1","42.portal_cube_weighted","42.portal_cube2","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"Weighted Companion Cube"}',Invulnerable:1,DeathLootTable:"minecraft:empty",Silent:1,active_effects:[{id:"invisibility",duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:-127d}]}
execute if entity @s[tag=42.portal_spawn_cube2] run summon armor_stand ~ ~ ~ {Tags:["42.portal_cube","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',Marker:1,Invisible:1,Small:1,DisabledSlots:16191,Passengers:[{id:interaction,Tags:["42.portal_cube_hit","42.portal_cube_spawn"],width:1.01,height:1.005,response:1}]}
execute if entity @s[tag=42.portal_spawn_cube2] run summon armor_stand ~ ~ ~ {Tags:["42.portal_cube_display","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',Marker:1,Invisible:1,Small:1,DisabledSlots:16191,Passengers:[\
    {id:shulker,Tags:["42.portal_cube_col","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',NoAI:1,Invulnerable:1,Silent:1,DeathLootTable:"minecraft:empty",active_effects:[{id:"invisibility",duration:-1,show_particles:0b}]},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_stone},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.40625f,.09375f,-.40625f],scale:[.8125f,.8125f,.8125f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:bottom,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:bottom,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,0f,-.5f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:top,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,.625f,-.5f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:top,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,.625f,-.5f],scale:[.375f,.375f,.375f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:bottom,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,.125f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:bottom,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,0f,.125f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:top,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,.625f,.125f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:top,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,.625f,.125f],scale:[.375f,.375f,.375f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn","42.portal_cube_color"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:pink_concrete_powder},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,.078125f,-.25f],scale:[.5f,.84375f,.5f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn","42.portal_cube_color"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:pink_concrete_powder},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,.25f,-.421875f],scale:[.5f,.5f,.84375f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn","42.portal_cube_color"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:pink_concrete_powder},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.421875f,.25f,-.25f],scale:[.84375f,.5f,.5f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.15625f,.0625f,-.15625f],scale:[.3125f,.875f,.3125f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.15625f,.34375f,-.4375f],scale:[.3125f,.3125f,.875f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.4375f,.34375f,-.15625f],scale:[.875f,.3125f,.3125f]}},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u2764","color":"#F38BAA"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,-.225f,.9375f],scale:[1.333f,1.333f,1.333f]},Rotation:[0f,-90f]},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u2764","color":"#F38BAA"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,-.225f,-.0625f],scale:[1.333f,1.333f,1.333f]},Rotation:[0f,90f]},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u2764","color":"#F38BAA"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,.28f,.4375f],scale:[1.333f,1.333f,1.333f]}},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u2764","color":"#F38BAA"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,.28f,.4375f],scale:[1.333f,1.333f,1.333f]},Rotation:[90f,0f]},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u2764","color":"#F38BAA"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,.28f,.4375f],scale:[1.333f,1.333f,1.333f]},Rotation:[180f,0f]},\
    {id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u2764","color":"#F38BAA"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.01666f,.28f,.4375f],scale:[1.333f,1.333f,1.333f]},Rotation:[-90f,0f]}]}
#laser
execute if entity @s[tag=42.portal_spawn_cube3] run summon pig ~ ~ ~ {Tags:["42.portal_cube_tp","42.portal_cube_size1","42.portal_cube_weighted","42.portal_laser_cube","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"Discouragement Redirection Cube"}',Invulnerable:1,DeathLootTable:"minecraft:empty",Silent:1,active_effects:[{id:"invisibility",duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:-127d}]}
execute if entity @s[tag=42.portal_spawn_cube3] run summon armor_stand ~ ~ ~ {Tags:["42.portal_cube","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',Marker:1,Invisible:1,Small:1,DisabledSlots:16191,Passengers:[{id:interaction,Tags:["42.portal_cube_hit","42.portal_cube_spawn"],width:1.01,height:1.005,response:1}]}
execute if entity @s[tag=42.portal_spawn_cube3] run summon armor_stand ~ ~ ~ {Tags:["42.portal_cube_display","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',Marker:1,Invisible:1,Small:1,DisabledSlots:16191,Passengers:[\
    {id:shulker,Tags:["42.portal_cube_col","42.portal_cube_spawn","42.portal_cube_dis"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',NoAI:1,Invulnerable:1,Silent:1,DeathLootTable:"minecraft:empty",active_effects:[{id:"invisibility",duration:-1,show_particles:0b}]},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:gray_stained_glass},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.40625f,.09375f,-.40625f],scale:[.8125f,.8125f,.8125f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:bottom,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:bottom,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,0f,-.5f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:top,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,.625f,-.5f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:top,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,.625f,-.5f],scale:[.375f,.375f,.375f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:bottom,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,.125f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:bottom,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,0f,.125f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west,half:top,shape:outer_left}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,.625f,.125f],scale:[.375f,.375f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east,half:top,shape:outer_right}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,.625f,.125f],scale:[.375f,.375f,.375f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:black_stained_glass},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.1875f,.3125f,.125f],scale:[.375f,.375f,.375f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_pillar,Properties:{axis:z}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,.275f,-.25f],scale:[.5f,.5f,.5f]}}]}
#turret
execute if entity @s[tag=42.portal_spawn_turret] run summon pig ~ ~ ~ {Tags:["42.portal_cube_tp","42.portal_cube_size1","42.portal_turret","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"Sentry Turret"}',Invulnerable:1,DeathLootTable:"minecraft:empty",Silent:1,active_effects:[{id:"invisibility",duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:-127d}]}
execute if entity @s[tag=42.portal_spawn_turret] run summon armor_stand ~ ~ ~ {Tags:["42.portal_cube","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',Marker:1,Invisible:1,Small:1,DisabledSlots:16191,Passengers:[{id:interaction,Tags:["42.portal_cube_hit","42.portal_turret_hit","42.portal_cube_spawn"],width:1.01,height:1.505,response:1}]}
execute if entity @s[tag=42.portal_spawn_turret] run summon armor_stand ~ ~ ~ {Tags:["42.portal_cube_display","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',Marker:1,Invisible:1,Small:1,DisabledSlots:16191,Passengers:[\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_turret_col","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.1875f,.5f,-.1875f],scale:[.375f,1f,.375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:gray_concrete},view_range:10f,transformation:{left_rotation:[-.1736f,0f,0f,.9848f],right_rotation:[0f,0f,0f,1f],translation:[.21875f,0f,.4375f],scale:[.0625f,.5f,.0625f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:gray_concrete},view_range:10f,transformation:{left_rotation:[-.1736f,0f,0f,.9848f],right_rotation:[0f,0f,0f,1f],translation:[-.28125f,0f,.4375f],scale:[.0625f,.5f,.0625f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:gray_concrete},view_range:10f,transformation:{left_rotation:[0f,.9962f,.08716f,0f],right_rotation:[0f,0f,0f,1f],translation:[.03125f,0f,-.4375f],scale:[.0625f,.75f,.0625f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_turret_col","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.1875f,.4375f,.125f],scale:[.125f,.0625f,.25f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_turret_col","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.3125f,.4375f,.125f],scale:[.125f,.0625f,.25f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_turret_col","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.0625f,.6875f,-.4375f],scale:[.125f,.0625f,.25f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_turret_eye","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:red_shulker_box},view_range:10f,transformation:{left_rotation:[.7071f,0f,0f,.7071f],right_rotation:[0f,0f,0f,1f],translation:[-.078125f,1.03125f,.0625f],scale:[.15625f,.15625f,.15625f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_turret_col","42.portal_turret_arm_l","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.1875f,.625f,-.125f],scale:[.0625f,.75f,.25f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_turret_col","42.portal_turret_arm_r","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,.625f,-.125f],scale:[.0625f,.75f,.25f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_turret_arm_m2","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:observer,Properties:{facing:down}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.19f,.65f,-.12f],scale:[.38f,.7f,.24f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_turret_arm_l2","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:netherite_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,.875f,-.09375f],scale:[.0625f,.25f,.1875f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_turret_arm_r2","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:netherite_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.1875f,.875f,-.09375f],scale:[.0625f,.25f,.1875f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_turret_arm_m","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:polished_deepslate},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.1875f,1f,-.0625f],scale:[.375f,.0625f,.0625f]}}]}
#radio
execute if entity @s[tag=42.portal_spawn_radio] run summon pig ~ ~ ~ {Tags:["42.portal_cube_tp","42.portal_cube_size2","42.portal_radio","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"Radio"}',Invulnerable:1,DeathLootTable:"minecraft:empty",Silent:1,Age:-2147483648,active_effects:[{id:"invisibility",duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.movement_speed",base:-127d}]}
execute if entity @s[tag=42.portal_spawn_radio] run summon armor_stand ~ ~ ~ {Tags:["42.portal_cube","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',Marker:1,Invisible:1,Small:1,DisabledSlots:16191,Passengers:[{id:interaction,Tags:["42.portal_cube_hit","42.portal_cube_spawn"],width:.5,height:.505,response:1}]}
execute if entity @s[tag=42.portal_spawn_radio] run summon armor_stand ~ ~ ~ {Tags:["42.portal_cube_display","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',Marker:1,Invisible:1,Small:1,DisabledSlots:16191,Passengers:[\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:netherite_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.265625f,0f,-.140625f],scale:[.53125f,.015625f,.283125f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:netherite_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.125f,.015625f,0f],scale:[.25f,.234375f,.109375f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.125f,.015625f,-.125f],scale:[.25f,.234375f,.125f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,.015625f,-.125f],scale:[.125f,.234375f,.25f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,.015625f,-.125f],scale:[.125f,.234375f,.25f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:east}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,.25f,-.125f],scale:[.125f,.125f,.25f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz_stairs,Properties:{facing:west}},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.125f,.25f,-.125f],scale:[.125f,.125f,.25f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:smooth_quartz},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.125f,.25f,-.125f],scale:[.25f,.125f,.25f]}},\
    {id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:netherite_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.0625f,.375f,-.03125f],scale:[.0625f,.0625f,.0625f]}},{id:block_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',block_state:{Name:netherite_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.125f,.375f,-.03125f],scale:[.015625f,.375f,.015625f]}},{id:text_display,Tags:["42.portal_cube_dis","42.portal_cube_spawn"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"85.2 FM","color":"aqua"}',alignment:center,background:0,view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.175f,.11f],scale:[.125f,.125f,.125f]}}]}

scoreboard players set @e[type=!player,tag=42.portal_cube_spawn] 42.datapack 3
scoreboard players set @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp] 42.portal_skin 0
scoreboard players set @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp] 42.portal_lvl -1
team join 42.no_col @e[tag=42.portal_cube_tp,tag=42.portal_cube_spawn,tag=!42.portal_turret,tag=!42.portal_radio]
execute as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp,limit=1] run function 42:portal/new_id
scoreboard players operation @e[tag=42.portal_cube_spawn] 42.portal_id = @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp,limit=1] 42.portal_id
execute if entity @s[tag=42.portal_spawn_turret] at @s run function 42:portal/cube/turret/spawn
execute if entity @s[tag=42.portal_spawn_cube3] at @s run function 42:portal/cube/laser/spawn
execute if entity @s[tag=42.portal_spawn_radio] at @s run function 42:portal/cube/radio/spawn
execute if entity @s[tag=42.portal_dropper_drop] run tag @e[tag=42.portal_cube_spawn] add 42.portal_dropper_drop
execute if entity @s[tag=42.portal_cube_spawner] run function 42:portal/cube/spawner/config
execute if entity @s[tag=42.portal_spawn_cube1old] as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp] at @s run function 42:portal/cube/skin
tag @e remove 42.portal_cube_spawn
kill @s[type=area_effect_cloud]