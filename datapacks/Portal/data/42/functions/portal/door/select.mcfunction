function 42:portal/tools/sel/powerable
tellraw @p[tag=42.portal_selected] [{"text":"","color":"gray"},{"text":"      "},{"text":"[Power]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203517"}},{"text":"\n      "},{"text":"[Unpower]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203518"}},{"text":"\n   Misc...","color":"dark_gray"},{"text":"\n      "},{"text":"[Fizzle]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4203515"}}]