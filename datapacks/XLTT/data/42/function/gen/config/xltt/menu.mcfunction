tellraw @s [{text:"",color:"dark_gray"},\
    {text:"------------------------------"},\
    {text:"\nXLTT Config",color:"gold",bold:true},\
    {text:"\n   "},{text:"Resource pack..."}," ",{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:"Default: Enabled\n\nWhen Enabled: Newly generated O.D.M. Sword items will have a custom texture when seen using the resource pack. Players without the resource pack will see a missing texture on an invalid model.\n\nWhen disabled: Newly generated O.D.M. Sword items will appear as a Carrot on a Stick."}},\
    {text:"\n      "},{text:"[Enable]",click_event:{action:"run_command",command:"/function 42:gen/config/xltt/resourcepack/enable"},color:"green"},\
    " ",{text:"[Disable]",click_event:{action:"run_command",command:"/function 42:gen/config/xltt/resourcepack/disable"},color:"red"}]