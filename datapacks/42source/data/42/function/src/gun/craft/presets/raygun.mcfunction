function 42:src/gun/craft/custom {args:{\
    name:"Ray Gun",\
    model:"glistering_melon_slice",\
    gun:{\
        ammo:{max:20},\
        cooldown:{on_shoot:5},\
        reload_time:45,\
        flags:{auto:{},large_bullet:{},slow_bullet:{}},\
        bullet:{\
            item:{id:"minecraft:slime_block"}\
        },\
        sounds:{\
            reload_finish:{sound:{value:"block.beacon.activate player @a ~ ~ ~ .375 2"}},\
            shoot:{replace:{},sound:{value:"entity.allay.hurt player @a ~ ~ ~ .5 1.375"}}\
        },\
        particles:{\
            tracer:{replace:{},particle:{value:"entity_effect{color:[0f,1f,0f,.5f]} ~ ~ ~ 0 0 0 0 1 force"}}\
        }\
    }\
}}