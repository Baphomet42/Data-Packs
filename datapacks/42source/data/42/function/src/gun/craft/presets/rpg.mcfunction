function 42:src/gun/craft/custom {args:{\
    name:'"RPG"',\
    model:"firework_rocket",\
    gun:{\
        ammo:{max:1},\
        cooldown:{on_shoot:20,on_swap:30},\
        reload_time:50,\
        flags:{large_bullet:{},slow_bullet:{}},\
        bullet:{\
            item:{id:"copper_bulb"}\
        },\
        sounds:{\
            hit:{sound:{value:"entity.generic.explode player @a ~ ~ ~ 5 1"}},\
            shoot:{sound:{value:"entity.ender_dragon.shoot player @a ~ ~ ~ 1 .75"}}\
        },\
        particles:{\
            tracer:{particle:{value:"large_smoke ~ ~ ~ 0 0 0 0 1 force"}},\
            hit:{particle:{value:"explosion_emitter ~ ~ ~ 0 0 0 0 1 force"}}\
        }\
    }\
}}