tellraw @s [{text:"",color:"dark_gray"},\
    {text:"------------------------------"},\
    {text:"\nBaphomethSlab Config",color:"gold",bold:true},\
    {text:"\n   "},{text:"Automatic ranks..."}," ",{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:"Default: Disabled\n\nWhen Enabled: When a player joins for the first time, they are assigned to the default team (unless they already were on a team).\n\nWhen disabled: The default rank must be given manually."}},\
    {text:"\n      "},{text:"[Enable]",click_event:{action:"run_command",command:"/function 42:gen/config/labs/autoteam/enable"},color:"green"},\
    " ",{text:"[Disable]",click_event:{action:"run_command",command:"/function 42:gen/config/labs/autoteam/disable"},color:"red"}]