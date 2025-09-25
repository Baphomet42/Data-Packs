function 42:portal/tools/sel/powerable
tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"      "},"[",{text:"Power",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203558"}},"]",\
    {text:"\n      "},"[",{text:"Unpower",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203559"}},"]",\
    {text:"\n   Entire Wire...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Fizzle",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203555"}},"]",\
    {text:"\n      "},"[",{text:"Unlink",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203556"}},"]",\
    {text:"\n   Misc...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Change Skin",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203557"}},"]"\
    ]