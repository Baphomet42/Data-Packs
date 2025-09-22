execute if score @s 42.obj.posers.scale matches ..1000 anchored eyes facing entity @p[distance=..8,gamemode=!spectator,predicate=42:posers/seen_by_posers] eyes run return run rotate @s ~ ~

execute store result storage 42:posers temp.dist double .008 run scoreboard players get @s 42.obj.posers.scale
function 42:posers/mannequin/ai/watch_player_macro with storage 42:posers temp
data remove storage 42:posers temp