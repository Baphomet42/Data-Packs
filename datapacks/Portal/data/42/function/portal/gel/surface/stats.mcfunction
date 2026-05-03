scoreboard players reset .x_pos
scoreboard players reset .x_neg
scoreboard players reset .y_pos
scoreboard players reset .y_neg
scoreboard players reset .z_pos
scoreboard players reset .z_neg
execute if predicate 42:portal/gel/surface_range/x_positive run scoreboard players set .x_pos 42.obj.portal.vars 1
execute if predicate 42:portal/gel/surface_range/x_negative run scoreboard players set .x_neg 42.obj.portal.vars 1
execute if predicate 42:portal/gel/surface_range/y_positive run scoreboard players set .y_pos 42.obj.portal.vars 1
execute if predicate 42:portal/gel/surface_range/y_negative run scoreboard players set .y_neg 42.obj.portal.vars 1
execute if predicate 42:portal/gel/surface_range/z_positive run scoreboard players set .z_pos 42.obj.portal.vars 1
execute if predicate 42:portal/gel/surface_range/z_negative run scoreboard players set .z_neg 42.obj.portal.vars 1

scoreboard players reset .x_pos_fast
scoreboard players reset .x_neg_fast
scoreboard players reset .y_pos_fast
scoreboard players reset .y_neg_fast
scoreboard players reset .z_pos_fast
scoreboard players reset .z_neg_fast
execute if predicate 42:portal/gel/surface_range/x_positive_fast run scoreboard players set .x_pos_fast 42.obj.portal.vars 1
execute if predicate 42:portal/gel/surface_range/x_negative_fast run scoreboard players set .x_neg_fast 42.obj.portal.vars 1
execute if predicate 42:portal/gel/surface_range/y_positive_fast run scoreboard players set .y_pos_fast 42.obj.portal.vars 1
execute if predicate 42:portal/gel/surface_range/y_negative_fast run scoreboard players set .y_neg_fast 42.obj.portal.vars 1
execute if predicate 42:portal/gel/surface_range/z_positive_fast run scoreboard players set .z_pos_fast 42.obj.portal.vars 1
execute if predicate 42:portal/gel/surface_range/z_negative_fast run scoreboard players set .z_neg_fast 42.obj.portal.vars 1