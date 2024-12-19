function 42:src/gun/craft/custom {args:{name:"Ray Gun",model:"glistering_melon_slice",ammo:20,shoot_cooldown:5,reload_time:50,\
    flags:{auto:{},large_bullet:{},slow_bullet:{}},\
    overrides:{\
        sounds:{\
            reload_finish:{sound:{value:"block.beacon.activate player @a ~ ~ ~ .375 2"}},\
            shoot:{replace:{},sound:{value:"entity.allay.hurt player @a ~ ~ ~ .5 1.375"}}\
        },\
        bullet_item:{id:"slime_block"},\
        particles:{\
            tracer:{replace:{},particle:{value:"entity_effect{color:[0f,1f,0f,.5f]} ~ ~ ~ 0 0 0 0 1 force"}}\
        }}}}