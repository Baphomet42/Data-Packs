tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"   Misc...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Fizzle",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203706"}},"]"\
    ]
execute if entity @s[tag=42.tag.portal.pellet.super] run tellraw @p[tag=42.tag.portal.selected] [{text:"",color:"gray"},\
    {text:"      "},"[",{text:"Convert to Spawner",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203705"}},"]",\
    {text:" "},{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:[{text:"Spawners can be activated by Trigger Zones and allow levels to be fully reset"}]}}\
    ]