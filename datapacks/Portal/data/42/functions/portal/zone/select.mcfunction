function 42:portal/zone/update
tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},\
    {"text":"   Set Mode... ","color":"dark_gray"},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Load Mode - Used to reset and load levels\n\nTrigger Mode - Used to power or unpower equipment\n\nDeath Mode - Kill players who enter it if they're in the level (used to mark out of bounds areas)"}]}},\
    {"text":"\n      "},{"text":"[Load]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203623"}},\
    {"text":"\n      "},{"text":"[Trigger]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203624"}},\
    {"text":"\n      "},{"text":"[Death]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203640"}},\
    {"text":"\n   Set Size...","color":"dark_gray"},\
    {"text":"\n      "},{"text":"[1x1x1]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203625"}},\
    {"text":" "},{"text":"[3x3x3]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203626"}},\
    {"text":" "},{"text":"[5x5x5]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203627"}},\
    {"text":"\n   Configure...","color":"dark_gray"},\
    {"text":"\n      "},{"text":"[Set Level]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203628"}},{"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Sets the zone level to the level of the nearest equipment (within range).\n\nLoad zones will load this level when entered, unless the player was already in that level.\n\nTrigger zones will only work if its level is loaded, and won't activate again until its level is loaded again.\n\nDeath zones will kill players who enter it, but only if the player is in this level (and not in creative mode). They can activate unlimited times and don't need to be reset."}]}}]
execute if score @s 42.portal_x matches 0 run tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},\
    {"text":"      "},{"text":"[Remove Level]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203629"}},{"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"If no level is set, the zone will unload the level of the player who enters it. These zones should be placed at the end of levels."}]}},\
    {"text":"\n      "},{"text":"[Toggle Checkpoint]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203639"}}]
execute if score @s 42.portal_x matches 1 run tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},\
    {"text":"      "},{"text":"[Set Link to Power]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203630"}},\
    {"text":" "},{"text":"[Remove]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203631"}},\
    {"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"The set button will get the link value from the nearest equipment (within range)\n\nIf there is a link value set, the equipment in this link will get powered. Any power sources in the link may overwrite this."}]}},\
    {"text":"\n      "},{"text":"[Set Link to Unpower]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203632"}},\
    {"text":" "},{"text":"[Remove]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203633"}},\
    {"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"The set button will get the link value from the nearest equipment (within range)\n\nIf there is a link value set, the equipment in this link will lose power. Any power sources in the link may overwrite this."}]}},\
    {"text":"\n      "},{"text":"[Set id to Spawn]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203634"}},\
    {"text":" "},{"text":"[Remove]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203635"}},\
    {"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"The set button will get the id of the nearest equipment (within range)\n\nIf there is an id value set, it will run the spawn action, if applicable (Vital Apparatus Vent, Pellet Launcher, or Spawner)"}]}},\
    {"text":"\n      "},{"text":"[Set id to Fizzle]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203636"}},\
    {"text":" "},{"text":"[Remove]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203637"}},\
    {"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"The set button will get the id of the nearest equipment (within range)\n\nIf there is an id value set, it will fizzle its spawn, if applicable (Vital Apparatus Vent, Pellet Launcher, or Spawner)"}]}},\
    {"text":"\n      "},{"text":"[Toggle Emancipation]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203641"}},{"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"(Off by default)\n\nWhen on - the player who activates the zone will have all their portals fizzled\n\nIt is recommended to use Material Emancipation Grills instead. This feature is for scripted events."}]}}]
tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},\
    {"text":"   Misc...","color":"dark_gray"},\
    {"text":"\n      "},{"text":"[Fizzle]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203620"}},\
    {"text":"\n      "},{"text":"[Show]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203621"}},\
    {"text":" "},{"text":"[Hide]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203622"}}]
execute if entity @s[tag=42.portal_zone_cool] run tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},\
    {"text":"      "},{"text":"[Reset Cooldown]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203638"}}]