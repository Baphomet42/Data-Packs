function 42:portal/tag_id
execute at @s rotated as @e[tag=42.tag.portal.cube.laser.pointer,tag=42.tag.portal.id,limit=1] positioned ~ ~.5 ~ positioned ^ ^ ^.5 as @e[tag=42.tag.portal.laser.beam.this,limit=1] run function 42:portal/laser/beam/redirect
tag @e remove 42.tag.portal.id