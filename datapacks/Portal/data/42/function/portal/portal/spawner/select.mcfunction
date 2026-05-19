function 42:portal/tools/sel/powerable
tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"      "},"[",{text:"Power",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203562"}},"]",\
    {text:"\n      "},"[",{text:"Unpower",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203563"}},"]",\
    {text:"\n   Portal...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Cycle Portal Skin",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203561"}},"]",\
    {text:"\n   Cycle...",color:"dark_gray"},{text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Pair another Portal Spawner to create a cycle. Press `Pair` while standing near another Portal Spawner.\n\nAfter powering this spawner, it will power the next spawner in the cycle after a timer."}]}},\
    {text:"\n      "},"[",{text:"Pair",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203565"}},"] [",{text:"Remove Pair",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203566"}},"]",\
    {text:"\n      "},"[",{text:"Default Timer (5 seconds)",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203564"}},"]",\
    {text:"\n      "},"[",{text:"Custom Timer...",color:"#DDDDDD",click_event:{action:"suggest_command",command:"/function 42:portal/portal/spawner/set_cycle_time {ticks:100}"}},"]",\
    {text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Writes part of the command. Replace the number at the end of the command with a new time in ticks (number of seconds times 20). The new time must be between 40 and 1200 (2 seconds to 1 minute)."}]}},\
    {text:"\n   Misc...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Fizzle",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203560"}},"]"\
    ]