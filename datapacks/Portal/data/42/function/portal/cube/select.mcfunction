execute if entity @s[tag=42.tag.portal.cube.storage] run tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"   Misc...",color:"dark_gray"},\
    {text:"\n      "},{text:"[Fizzle]",click_event:{action:"run_command",command:"/trigger 42menu set 4203530"}},\
    {text:"\n      "},{text:"[Convert to Spawner]",click_event:{action:"run_command",command:"/trigger 42menu set 4203534"}},{text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Spawners can be activated by Trigger Zones and allow levels to be fully reset"}]}},\
    {text:"\n      "},{text:"[Change Skin]",click_event:{action:"run_command",command:"/trigger 42menu set 4203531"}}]

execute if entity @s[tag=42.tag.portal.cube.companion] run tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"   Misc...",color:"dark_gray"},\
    {text:"\n      "},{text:"[Fizzle]",click_event:{action:"run_command",command:"/trigger 42menu set 4203530"}},\
    {text:"\n      "},{text:"[Convert to Spawner]",click_event:{action:"run_command",command:"/trigger 42menu set 4203534"}},{text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Spawners can be activated by Trigger Zones and allow levels to be fully reset"}]}}]

execute if entity @s[tag=42.tag.portal.cube.laser] run tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"   Misc...",color:"dark_gray"},\
    {text:"\n      "},{text:"[Fizzle]",click_event:{action:"run_command",command:"/trigger 42menu set 4203530"}},\
    {text:"\n      "},{text:"[Convert to Spawner]",click_event:{action:"run_command",command:"/trigger 42menu set 4203534"}},{text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Spawners can be activated by Trigger Zones and allow levels to be fully reset"}]}},\
    {text:"\n      "},{text:"[Rotate]",click_event:{action:"run_command",command:"/trigger 42menu set 4203532"}}]

execute if entity @s[tag=42.tag.portal.turret] run tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"   Action... ",color:"dark_gray"},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Reset - Set all modes to default, stand up, and reposition to fit the grid.\n\nMalfunction - Play malfunction animation, then turn off."}]}},\
    {text:"\n      "},{text:"[Reset]",click_event:{action:"run_command",command:"/trigger 42menu set 4203540"}},\
    {text:"\n      "},{text:"[Fall Over]",click_event:{action:"run_command",command:"/trigger 42menu set 4203546"}},\
    {text:"\n      "},{text:"[Stand Up]",click_event:{action:"run_command",command:"/trigger 42menu set 4203542"}},\
    {text:"\n      "},{text:"[Malfunction]",click_event:{action:"run_command",command:"/trigger 42menu set 4203543"}},\
    {text:"\n   Toggle Mode... ",color:"dark_gray"},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Laser On - Show red laser straight forward if no target was found.\n\nOracle - Doesn't find targets, malfunction, turn off, or shoot. Laser blinks straight forward.\n\nNoAI - Doesn't find targets."}]}},\
    {text:"\n      "},{text:"[On/Off]",click_event:{action:"run_command",command:"/trigger 42menu set 4203541"}},\
    {text:"\n      "},{text:"[Laser On]",click_event:{action:"run_command",command:"/trigger 42menu set 4203547"}},\
    {text:"\n      "},{text:"[Oracle]",click_event:{action:"run_command",command:"/trigger 42menu set 4203544"}},\
    {text:"\n      "},{text:"[NoAI]",click_event:{action:"run_command",command:"/trigger 42menu set 4203545"}},\
    {text:"\n   Misc...",color:"dark_gray"},\
    {text:"\n      "},{text:"[Fizzle]",click_event:{action:"run_command",command:"/trigger 42menu set 4203530"}},\
    {text:"\n      "},{text:"[Convert to Spawner]",click_event:{action:"run_command",command:"/trigger 42menu set 4203534"}},{text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Spawners can be activated by Trigger Zones and allow levels to be fully reset"}]}},\
    {text:"\n      "},{text:"[Change Skin]",click_event:{action:"run_command",command:"/trigger 42menu set 4203531"}},\
    {text:"\n      "},{text:"[Rotate]",click_event:{action:"run_command",command:"/trigger 42menu set 4203532"}}]

execute if entity @s[tag=42.tag.portal.radio] run tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"   Music...",color:"dark_gray"},\
    {text:"\n      "},{text:"[Restart Song]",click_event:{action:"run_command",command:"/trigger 42menu set 4203533"}},\
    {text:"\n   Misc...",color:"dark_gray"},\
    {text:"\n      "},{text:"[Fizzle]",click_event:{action:"run_command",command:"/trigger 42menu set 4203530"}},\
    {text:"\n      "},{text:"[Convert to Spawner]",click_event:{action:"run_command",command:"/trigger 42menu set 4203534"}},{text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Spawners can be activated by Trigger Zones and allow levels to be fully reset"}]}},\
    {text:"\n      "},{text:"[Rotate]",click_event:{action:"run_command",command:"/trigger 42menu set 4203532"}}]