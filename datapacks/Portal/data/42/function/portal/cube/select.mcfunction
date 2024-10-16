execute if entity @s[tag=42.portal_cube1] run tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},\
    {"text":"   Misc...","color":"dark_gray"},\
    {"text":"\n      "},{"text":"[Fizzle]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203530"}},\
    {"text":"\n      "},{"text":"[Convert to Spawner]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203534"}},{"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Spawners can be activated by Trigger Zones and allow levels to be fully reset"}]}},\
    {"text":"\n      "},{"text":"[Change Skin]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203531"}}]

execute if entity @s[tag=42.portal_cube2] run tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},\
    {"text":"   Misc...","color":"dark_gray"},\
    {"text":"\n      "},{"text":"[Fizzle]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203530"}},\
    {"text":"\n      "},{"text":"[Convert to Spawner]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203534"}},{"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Spawners can be activated by Trigger Zones and allow levels to be fully reset"}]}}]

execute if entity @s[tag=42.portal_laser_cube] run tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},\
    {"text":"   Misc...","color":"dark_gray"},\
    {"text":"\n      "},{"text":"[Fizzle]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203530"}},\
    {"text":"\n      "},{"text":"[Convert to Spawner]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203534"}},{"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Spawners can be activated by Trigger Zones and allow levels to be fully reset"}]}},\
    {"text":"\n      "},{"text":"[Rotate]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203532"}}]

execute if entity @s[tag=42.portal_turret] run tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},\
    {"text":"   Action... ","color":"dark_gray"},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Reset - Set all modes to default, stand up, and reposition to fit the grid.\n\nMalfunction - Play malfunction animation, then turn off."}]}},\
    {"text":"\n      "},{"text":"[Reset]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203540"}},\
    {"text":"\n      "},{"text":"[Fall Over]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203546"}},\
    {"text":"\n      "},{"text":"[Stand Up]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203542"}},\
    {"text":"\n      "},{"text":"[Malfunction]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203543"}},\
    {"text":"\n   Toggle Mode... ","color":"dark_gray"},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"text":"Laser On - Show red laser straight forward if no target was found.\n\nOracle - Doesn't find targets, malfunction, turn off, or shoot. Laser blinks straight forward.\n\nNoAI - Doesn't find targets."}]}},\
    {"text":"\n      "},{"text":"[On/Off]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203541"}},\
    {"text":"\n      "},{"text":"[Laser On]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203547"}},\
    {"text":"\n      "},{"text":"[Oracle]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203544"}},\
    {"text":"\n      "},{"text":"[NoAI]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203545"}},\
    {"text":"\n   Misc...","color":"dark_gray"},\
    {"text":"\n      "},{"text":"[Fizzle]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203530"}},\
    {"text":"\n      "},{"text":"[Convert to Spawner]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203534"}},{"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Spawners can be activated by Trigger Zones and allow levels to be fully reset"}]}},\
    {"text":"\n      "},{"text":"[Change Skin]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203531"}},\
    {"text":"\n      "},{"text":"[Rotate]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203532"}}]

execute if entity @s[tag=42.portal_radio] run tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},\
    {"text":"   Music...","color":"dark_gray"},\
    {"text":"\n      "},{"text":"[Restart Song]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203533"}},\
    {"text":"\n   Misc...","color":"dark_gray"},\
    {"text":"\n      "},{"text":"[Fizzle]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203530"}},\
    {"text":"\n      "},{"text":"[Convert to Spawner]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203534"}},{"text":" "},{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Spawners can be activated by Trigger Zones and allow levels to be fully reset"}]}},\
    {"text":"\n      "},{"text":"[Rotate]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203532"}}]