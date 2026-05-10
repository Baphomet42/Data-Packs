function 42:portal/tag_id
scoreboard players set @a[tag=42.tag.portal.id] 42.obj.portal.id 0
tp @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.collision] ~ -512 ~
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.group]
tag @e remove 42.tag.portal.id