execute unless entity @s[tag=42.tag.portal.elevator.main,tag=42.tag.portal.elevator.show,tag=!42.tag.portal.elevator.search] run return fail

function 42:portal/elevator/reset
function 42:portal/tag_id
tp @e[tag=42.tag.portal.elevator.collision,tag=42.tag.portal.id] ~ -512 ~
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.group,tag=!42.tag.portal.elevator.main]
tag @e remove 42.tag.portal.id

tag @s remove 42.tag.portal.elevator.show
tag @s remove 42.tag.portal.elevator.hide_when_off