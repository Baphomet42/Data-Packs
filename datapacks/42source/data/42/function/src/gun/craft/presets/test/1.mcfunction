function 42:src/gun/craft/custom {args:{\
    name:"Test",\
    model:"sponge",\
    gun:{\
        ammo:{max:15},\
        cooldown:{on_shoot:1},\
        flags:{auto:{},fast_bullet:{}},\
        bullet:{\
            item:{id:"minecraft:jigsaw"}\
        },\
        sounds:{\
            reload_start:{replace:{},sound:{value:"block.piston.extend player @a ~ ~ ~ 10 1.5"}},\
            reload_finish:{replace:{},sound:{value:"block.beacon.activate player @a ~ ~ ~ .375 2"}},\
            shoot:{replace:{},sound:{value:"entity.player.burp player @a ~ ~ ~ 1 1"}}\
        },\
        particles:{\
            tracer:{particle:{value:"bubble_pop ~ ~ ~ 0 0 0 0 1 normal"}}\
        }\
    }\
}}