execute unless entity @s[type=mannequin] run return fail
function 42:posers/mannequin/unlink
tag @s add 42.tag.posers.mannequin
function 42:posers/new_id

function 42:posers/mannequin/reset

data merge entity @s {Invulnerable:true}