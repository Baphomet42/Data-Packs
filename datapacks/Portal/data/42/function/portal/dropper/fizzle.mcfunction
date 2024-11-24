function 42:portal/tag_id
fill ~-1 ~ ~-1 ~1 ~ ~1 air replace smooth_quartz
fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 air replace smooth_quartz_slab
fill ~-1 ~-2 ~-1 ~1 ~ ~1 air replace #42:portal/portal_replace
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.dropper.group]
tag @e remove 42.tag.portal.id