execute unless entity @s[tag=42.tag.portal.elevator.main,tag=42.tag.portal.elevator.show] run return fail

function 42:portal/tag_id
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.group,tag=!42.tag.portal.elevator.main]
tag @e remove 42.tag.portal.id

tag @s remove 42.tag.portal.elevator.show
