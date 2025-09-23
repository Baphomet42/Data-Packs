execute unless entity @s[type=mannequin] run return fail

data modify entity @s Invulnerable set value true
data modify entity @s immovable set value true
effect give @s resistance infinite 255 true
function 42:posers/mannequin/unlink