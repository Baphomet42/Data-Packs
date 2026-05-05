function 42:portal/zone/update
tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"   Set Mode... ",color:"dark_gray"},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Load Mode - Used to reset and load levels\n\nTrigger Mode - Used to power or unpower equipment"}]}},\
    {text:"\n      "},"[",{text:"Load",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203623"}},"]",\
    {text:"\n      "},"[",{text:"Trigger",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203624"}},"]",\
    {text:"\n   Set Size...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"1x1x1",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203625"}},"]",\
    {text:" "},"[",{text:"3x3x3",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203626"}},"]",\
    {text:" "},"[",{text:"5x5x5",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203627"}},"]",\
    {text:"\n   Configure...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Set Level",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203628"}},"]",{text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Sets the zone level to the level of the nearest equipment (within range).\n\nLoad zones will load this level when entered, unless the player was already in that level.\n\nTrigger zones will only work if its level is loaded, and won't activate again until its level is loaded again."}]}}\
    ]
execute if score @s 42.obj.portal.var.x matches 0 run tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"      "},"[",{text:"Remove Level",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203629"}},"]",{text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"If no level is set, the zone will unload the level of the player who enters it. These zones should be placed at the end of levels."}]}},\
    {text:"\n      "},"[",{text:"Toggle Checkpoint",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203639"}},"]"\
    ]
execute if score @s 42.obj.portal.var.x matches 1 run tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"      "},"[",{text:"Set Link to Power",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203630"}},"]",\
    {text:" "},"[",{text:"Remove",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203631"}},"]",\
    {text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"The set button will get the link value from the nearest equipment (within range)\n\nIf there is a link value set, the equipment in this link will get powered. Any power sources in the link may overwrite this."}]}},\
    {text:"\n      "},"[",{text:"Set Link to Unpower",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203632"}},"]",\
    {text:" "},"[",{text:"Remove",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203633"}},"]",\
    {text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"The set button will get the link value from the nearest equipment (within range)\n\nIf there is a link value set, the equipment in this link will lose power. Any power sources in the link may overwrite this."}]}},\
    {text:"\n      "},"[",{text:"Set id to Spawn",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203634"}},"]",\
    {text:" "},"[",{text:"Remove",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203635"}},"]",\
    {text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"The set button will get the id of the nearest equipment (within range)\n\nIf there is an id value set, it will run the spawn action, if applicable (Vital Apparatus Vent, Pellet Launcher, or Spawner)"}]}},\
    {text:"\n      "},"[",{text:"Set id to Fizzle",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203636"}},"]",\
    {text:" "},"[",{text:"Remove",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203637"}},"]",\
    {text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"The set button will get the id of the nearest equipment (within range)\n\nIf there is an id value set, it will fizzle its spawn, if applicable (Vital Apparatus Vent, Pellet Launcher, or Spawner)"}]}},\
    {text:"\n      "},"[",{text:"Toggle Emancipation",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203641"}},"]",{text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"(Off by default)\n\nWhen on - the player who activates the zone will have all their portals fizzled\n\nIt is recommended to use Material Emancipation Grills instead. This feature is for scripted events."}]}}\
    ]
tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"   Misc...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Fizzle",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203620"}},"]",\
    {text:"\n      "},"[",{text:"Show",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203621"}},"]",\
    {text:" "},"[",{text:"Hide",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203622"}},"]"\
    ]
execute if entity @s[tag=42.tag.portal.zone.cool] run tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"      "},"[",{text:"Reset Cooldown",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203638"}},"]"\
    ]