tellraw @a {"text":"42datapack error (3): Failed to load Portal level. Level goes outside the render distance","color":"red"}
#
data remove storage 42:portal fallback_temp_load_error
$data modify storage 42:portal fallback_temp_load_error set from storage 42:portal_levels $(lvl)
#
function 42:portal/level/loader/unload_all
$data remove storage 42:portal_levels $(lvl)
#
$data modify storage 42:portal_levels $(lvl) set from storage 42:portal fallback_temp_load_error
data remove storage 42:portal fallback_temp_load_error