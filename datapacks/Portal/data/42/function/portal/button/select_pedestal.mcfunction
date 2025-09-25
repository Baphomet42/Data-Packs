tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"   Activation Duration...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Default (1.5 seconds)",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203522"}},"]",\
    {text:"\n      "},"[",{text:"Custom...",color:"#DDDDDD",click_event:{action:"suggest_command",command:"/function 42:portal/button/set_time {ticks:50}"}},"]",\
    {text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Writes part of the command. Replace the number at the end of the command with a new time in ticks (number of seconds times 20). The new time must be 20 or more (one second). Negative values make the button stay on forever after being pressed."}]}},\
    {text:"\n   Misc...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Fizzle",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203520"}},"]",\
    {text:"\n      "},"[",{text:"Rotate",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203521"}},"]"\
    ]