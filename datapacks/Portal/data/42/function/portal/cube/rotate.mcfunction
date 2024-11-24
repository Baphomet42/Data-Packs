function 42:portal/tag_id
execute unless entity @s[tag=42.tag.portal.cube.storage] unless entity @s[tag=42.tag.portal.cube.companion] as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] at @s run rotate @s ~45 ~
tag @e remove 42.tag.portal.id