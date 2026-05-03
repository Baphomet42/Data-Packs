execute if entity @s[predicate=42:portal/gel/surface_range/x_negative] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-.5 ~-.5 ~-.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=2,dy=0,dz=0] run function 42:portal/gel/effect/apply_range
execute if entity @s[predicate=42:portal/gel/surface_range/x_positive] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-2.5 ~-.5 ~-.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=2,dy=0,dz=0] run function 42:portal/gel/effect/apply_range
execute if entity @s[predicate=42:portal/gel/surface_range/y_negative] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-.5 ~-.5 ~-.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=0,dy=2,dz=0] run function 42:portal/gel/effect/apply_range
execute if entity @s[predicate=42:portal/gel/surface_range/y_positive] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-.5 ~-2.5 ~-.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=0,dy=2,dz=0] run function 42:portal/gel/effect/apply_range
execute if entity @s[predicate=42:portal/gel/surface_range/z_negative] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-.5 ~-.5 ~-.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=0,dy=0,dz=2] run function 42:portal/gel/effect/apply_range
execute if entity @s[predicate=42:portal/gel/surface_range/z_positive] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-.5 ~-.5 ~-2.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=0,dy=0,dz=2] run function 42:portal/gel/effect/apply_range

execute if entity @s[predicate=42:portal/gel/surface_range/x_negative_fast] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-.5 ~-.5 ~-.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=5,dy=0,dz=0] run function 42:portal/gel/effect/apply_range
execute if entity @s[predicate=42:portal/gel/surface_range/x_positive_fast] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-5.5 ~-.5 ~-.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=5,dy=0,dz=0] run function 42:portal/gel/effect/apply_range
execute if entity @s[predicate=42:portal/gel/surface_range/y_negative_fast] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-.5 ~-.5 ~-.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=0,dy=5,dz=0] run function 42:portal/gel/effect/apply_range
execute if entity @s[predicate=42:portal/gel/surface_range/y_positive_fast] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-.5 ~-5.5 ~-.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=0,dy=5,dz=0] run function 42:portal/gel/effect/apply_range
execute if entity @s[predicate=42:portal/gel/surface_range/z_negative_fast] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-.5 ~-.5 ~-.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=0,dy=0,dz=5] run function 42:portal/gel/effect/apply_range
execute if entity @s[predicate=42:portal/gel/surface_range/z_positive_fast] as @e[tag=42.tag.portal.gel.has_effect,distance=..10] at @s \
    positioned ~-.5 ~-.5 ~-5.5 if entity @e[tag=42.tag.portal.temp.gel_test,dx=0,dy=0,dz=5] run function 42:portal/gel/effect/apply_range