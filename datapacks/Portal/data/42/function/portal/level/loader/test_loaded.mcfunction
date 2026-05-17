execute \
    if loaded ~-16 ~ ~-16 \
    if loaded ~-16 ~ ~ \
    if loaded ~-16 ~ ~16 \
    if loaded ~ ~ ~-16 \
    if loaded ~ ~ ~ \
    if loaded ~ ~ ~16 \
    if loaded ~16 ~ ~-16 \
    if loaded ~16 ~ ~ \
    if loaded ~16 ~ ~16 \
    run return 1

data modify storage 42:portal loader.error.entity set from storage 42:portal loader.temp_entity

return fail