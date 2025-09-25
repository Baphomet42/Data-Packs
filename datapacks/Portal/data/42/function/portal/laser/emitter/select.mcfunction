function 42:portal/tools/sel/powerable
tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"      "},"[",{text:"Power",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203686"}},"]",\
    {text:"\n      "},"[",{text:"Unpower",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203687"}},"]",\
    {text:"\n   Misc...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Fizzle",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203685"}},"]"\
    ]