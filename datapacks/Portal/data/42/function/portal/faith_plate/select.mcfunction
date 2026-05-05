tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"   Custom Launch Velocity... ",color:"dark_gray"},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Select a direction to write part of the command. Replace the number at the end of the command with a new velocity. Positive values correspond with south/east/up. Values should typically be over +- 1000 for the main direction, 0 for the sideways direction, and over 1000 for the up direction. Values above 5000 may be too fast to work correctly."}]}},\
    {text:"\n      "},"[",{text:"South/North...",color:"#DDDDDD",click_event:{action:"suggest_command",command:"/function 42:portal/faith_plate/set_velocity_z {z:1000}"}},"]",\
    {text:"\n      "},"[",{text:"East/West...",color:"#DDDDDD",click_event:{action:"suggest_command",command:"/function 42:portal/faith_plate/set_velocity_x {x:1000}"}},"]",\
    {text:"\n      "},"[",{text:"Up/Down...",color:"#DDDDDD",click_event:{action:"suggest_command",command:"/function 42:portal/faith_plate/set_velocity_y {y:1000}"}},"]",\
    {text:"\n   Misc...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Fizzle",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203511"}},"]",\
    {text:"\n      "},"[",{text:"Rotate",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203510"}},"]"\
    ]