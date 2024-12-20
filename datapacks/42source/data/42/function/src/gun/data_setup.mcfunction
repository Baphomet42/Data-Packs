# keep this file consistent with README.md

# default gun item
#   the following components are overridden from the gun args upon creation:
#       `max_damage` = `gun.ammo.max`
#       `damage` = `gun.ammo.current.inverse`

data modify storage 42:src data.gun.default_item set value \
    {\
        id:"minecraft:poisonous_potato",\
        components:{\
            "!minecraft:food":{},\
            "minecraft:max_stack_size":1,\
            "minecraft:consumable":{consume_seconds:2000000000,has_consume_particles:0b,sound:"intentionally_empty",animation:"bow"},\
            "minecraft:rarity":"common",\
            "minecraft:item_name":'"Gun"',\
            "minecraft:item_model":"minecraft:stick",\
            "minecraft:custom_data":{42components:{datapack:7,\
                src:{\
                    gun:{\
                        ammo:{current:{inverse:0},max:10}\
                    }\
                }\
            }},\
            "minecraft:max_damage":1,\
            "minecraft:damage":0\
        }\
    }

# default gun data
#   all data here can be overriden within the gun item `minecraft:custom_data.src`
#   the default `hit` particle effect is hardcoded in `42:src/gun/enum/particle/hit.mcfunction`

data modify storage 42:src data.gun.default_data set value \
    {\
        gun:{\
            cooldown:{\
                on_shoot:5,\
                on_swap:10\
            },\
            reload_time:20,\
            sounds:{\
                hit:{sound:{value:"block.metal.hit player @a ~ ~ ~ 1 2"}},\
                reload_start:{sound:{value:"block.vault.insert_item_fail player @a ~ ~ ~ .375 1.25"}},\
                reload_finish:{sound:{value:"block.vault.insert_item player @a ~ ~ ~ .375 1.25"}},\
                shoot:{sound:{value:"entity.generic.explode player @a ~ ~ ~ .5 2"}},\
                shoot_fail:{sound:{value:"block.vault.reject_rewarded_player player @a ~ ~ ~ .5 2"}}\
            },\
            particles:{\
                hit:{},\
                tracer:{particle:{value:"dust_color_transition{scale:.25,from_color:[.25,.25,.25],to_color:[.5,.5,.5]} ~ ~ ~ .05 .05 .05 0 1 normal"}}\
            },\
            bullet:{\
                item:{id:"minecraft:netherite_block"}\
            }\
        }\
    }

# full gun data

#   src
#       gun
#           ammo
#               current
#                   inverse
#               max
#           bullet
#               item
#           cooldown
#               cool_until
#               time_equipped
#               on_shoot
#               on_swap
#           equip_instance
#           flags
#               auto
#               cancel_reload_slowness
#               fast_bullet
#               large_bullet
#               slow_bullet
#           particles
#               hit
#                   particle
#                       value
#                   replace
#               tracer
#                   particle
#                       value
#                   replace
#           reload_time
#           sounds
#               shoot
#                   replace
#                   sound
#                       value
#               shoot_fail
#                   replace
#                   sound
#                       value
#               reload_finish
#                   replace
#                   sound
#                       value
#               reload_start
#                   replace
#                   sound
#                       value