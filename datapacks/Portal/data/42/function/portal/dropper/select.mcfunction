tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"   Spawns...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Drop New",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203585"}},"]",\
    {text:"\n      "},"[",{text:"Fizzle Spawn",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203586"}},"]"\
    ]
function 42:portal/tools/sel/powerable
tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"      "},"[",{text:"Power",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203583"}},"]",\
    {text:"\n      "},"[",{text:"Unpower",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203584"}},"]",\
    {text:"\n   Misc...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Fizzle",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203580"}},"]",\
    {text:"\n      "},"[",{text:"Cycle Type",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203581"}},"]",\
    {text:"\n      "},"[",{text:"Change Skin",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203582"}},"]",\
    {text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Default - Looking up into the vent shows blackness\n\nAlternate - The vent has no ceiling so it can be manually extended with blocks"}]}}\
    ]