function 42:src/gun/craft/custom {args:{name:"Test",model:"sponge",ammo:15,shoot_cooldown:1,reload_time:20,\
    flags:{auto:{},fast_bullet:{}},\
    overrides:{\
        sounds:{\
            reload_start:{replace:{},sound:{value:"block.piston.extend player @a ~ ~ ~ 10 1.5"}},\
            reload_finish:{replace:{},sound:{value:"block.beacon.activate player @a ~ ~ ~ .375 2"}},\
            shoot:{replace:{},sound:{value:"entity.player.burp player @a ~ ~ ~ 1 1"}}\
        },\
        bullet:{id:"jigsaw"},\
        particles:{\
            tracer:{particle:{value:"bubble_pop ~ ~ ~ 0 0 0 0 1 normal"}}\
        }}}}