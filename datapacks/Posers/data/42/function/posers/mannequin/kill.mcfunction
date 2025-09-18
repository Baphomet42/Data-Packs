execute unless entity @s[type=mannequin] run return fail

execute at @s run function 42:posers/mannequin/spawner/drop_item
function 42:posers/mannequin/unlink

tp @s ~ -1024 ~
kill @s