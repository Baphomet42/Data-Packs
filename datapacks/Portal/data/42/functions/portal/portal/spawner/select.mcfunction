function 42:portal/tools/sel/powerable
tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},{"text":"      "},{"text":"[Power]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203562"}},{"text":"\n      "},{"text":"[Unpower]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203563"}},{"text":"\n   Portal...","color":"dark_gray"},{"text":"\n      "},{"text":"[Cycle Portal Skin]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203561"}},{"text":"\n   Misc...","color":"dark_gray"},{"text":"\n      "},{"text":"[Fizzle]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203560"}}]