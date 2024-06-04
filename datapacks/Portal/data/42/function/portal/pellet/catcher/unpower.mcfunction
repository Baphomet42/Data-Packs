tag @s remove 42.portal_pellet_catcher_on
function 42:portal/tag_id
data merge entity @e[tag=42.portal_id,tag=42.portal_pellet_catcher_glass,limit=1,sort=nearest] {block_state:{Name:orange_stained_glass}}
tag @e remove 42.portal_id
function 42:portal/unpower