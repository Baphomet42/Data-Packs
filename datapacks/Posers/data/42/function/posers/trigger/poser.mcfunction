execute if entity @s[tag=!42op,gamemode=!creative] run return run function 42:error_perms
function 42:gen/cmdfeed/hide

execute if score @s poser matches 1..4 run tellraw @s {text:"------------------------------",color:"dark_gray"}
execute if score @s poser matches 1..4 run tellraw @s \
    [{text:"",color:"gray"},\
    {text:"Poser Menu",color:"gold",bold:true},\
    {storage:"42:gen",nbt:"cmdfeed_btn",interpret:true},\
    "\n",{text:"Click buttons to edit nearest mannequin",color:"dark_purple"},\
    "\n   ","[",{text:"Highlight Nearest Mannequin",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 1001"},hover_event:{action:"show_text",value:\
        ["",{text:"Highlight Nearest Mannequin",bold:true},"\n\n",{text:"All buttons find the nearest mannequin at the time of pressing it. This button can be used to test it without changing any data.",color:"gray"}]}},"]",\
    ]
execute if score @s poser matches 1 run tellraw @s \
    [{text:"",color:"gray"},\
    "   ",{text:"Posers...",color:"dark_gray"},\
    "\n      ","[",{text:"Init Poser",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 1501"},hover_event:{action:"show_text",value:\
        ["",{text:"Init Poser",bold:true},"\n\n",{text:"Set mannequin as Poser. This enables left and right clicking mannequin for certain actions.",color:"gray"}]}},"]",\
    "  ","[",{text:"Unlink Poser",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 1502"},hover_event:{action:"show_text",value:\
        ["",{text:"Unlink Poser",bold:true},"\n\n",{text:"Remove interactions so mannequin acts more vanilla.",color:"gray"}]}},"]",\
    "  ","[",{text:"Quick Freeze",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 1503"},hover_event:{action:"show_text",value:\
        ["",{text:"Quick Freeze",bold:true},"\n\n",{text:"Unlink Poser, set Invulnerable and immovable to true, and give max resistance.",color:"gray"}]}},"]",\
    "\n      ","[",{text:"Drop Item",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 1504"},hover_event:{action:"show_text",value:\
        ["",{text:"Drop Item",bold:true},"\n\n",{text:"Drops Mannequin Poser item without killing the mannequin.",color:"gray"}]}},"]",\
    "  ","[",{text:"Kill",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 1505"},hover_event:{action:"show_text",value:\
        ["",{text:"Kill",bold:true},"\n\n",{text:"Drops Mannequin Poser item and kills the mannequin.",color:"gray"}]}},"]",\
    "\n   ",{text:"AI...",color:"dark_gray"},\
    "\n      ","[",{text:"Watch Players",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 1701"},hover_event:{action:"show_text",value:\
        ["",{text:"Watch Players",bold:true},"\n\n",{text:"Toggle whether mannequin should rotate towards nearby players.",color:"gray"}]}},"]",\
    "\n   ",{text:"Nametag...",color:"dark_gray"},\
    "\n      ","[",{text:"CustomNameVisible",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2006"},hover_event:{action:"show_text",value:\
        ["",{text:"CustomNameVisible",bold:true},"\n\n",{text:"Toggle whether mannequin CustomName shows when not being looked at.",color:"gray"}]}},"]",\
    "  ","[",{text:"mainhand -> CustomName",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2007"},hover_event:{action:"show_text",value:\
        ["",{text:"mainhand -> CustomName",bold:true},"\n\n",{text:"Copy custom_name of mainhand item to mannequin CustomName.",color:"gray"}]}},"]",\
    "\n      ","[",{text:"hide_description",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3002"},hover_event:{action:"show_text",value:\
        ["",{text:"hide_description",bold:true},"\n\n",{text:"Toggle whether description should show beneath CustomName.",color:"gray"}]}},"]",\
    "  ","[",{text:"mainhand -> description",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3003"},hover_event:{action:"show_text",value:\
        ["",{text:"mainhand -> description",bold:true},"\n\n",{text:"Copy custom_name of mainhand item to mannequin description.",color:"gray"}]}},"]",\
    "\n   ",{text:"Pose...",color:"dark_gray"},\
    "\n      ","[",{text:"sitting",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3250"},hover_event:{action:"show_text",value:\
        ["",{text:"sitting",bold:true},"\n\n",{text:"Toggle riding pose.",color:"gray"}]}},"]",\
    "  ","[",{text:"standing",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3201"},hover_event:{action:"show_text",value:\
        ["",{text:"standing",bold:true},"\n\n",{text:"Set pose to standing.",color:"gray"}]}},"]",\
    "  ","[",{text:"crouching",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3202"},hover_event:{action:"show_text",value:\
        ["",{text:"crouching",bold:true},"\n\n",{text:"Set pose to crouching.",color:"gray"}]}},"]",\
    "\n      ","[",{text:"sleeping",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3203"},hover_event:{action:"show_text",value:\
        ["",{text:"sleeping",bold:true},"\n\n",{text:"Set pose to sleeping.",color:"gray"}]}},"]",\
    "  ","[",{text:"swimming",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3204"},hover_event:{action:"show_text",value:\
        ["",{text:"swimming",bold:true},"\n\n",{text:"Set pose to swimming.",color:"gray"}]}},"]",\
    "  ","[",{text:"fall_flying",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3205"},hover_event:{action:"show_text",value:\
        ["",{text:"fall_flying",bold:true},"\n\n",{text:"Set pose to fall_flying.",color:"gray"}]}},"]",\
    ]
execute if score @s poser matches 2 run tellraw @s \
    [{text:"",color:"gray"},\
    "   ",{text:"Profile...",color:"dark_gray"},\
    "\n      ","[",{text:"mainhand -> profile",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3009"},hover_event:{action:"show_text",value:\
        ["mainhand -> profile",{text:"",bold:true},"\n\n",{text:"Copy profile of mainhand item to mannequin profile.",color:"gray"}]}},"]",\
    "  ","[",{text:"UUID -> profile",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3011"},hover_event:{action:"show_text",value:\
        ["UUID -> profile",{text:"",bold:true},"\n\n",{text:"Set mannequin profile to your UUID.",color:"gray"}]}},"]",\
    "  ","[",{text:"Drop Head",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3010"},hover_event:{action:"show_text",value:\
        ["",{text:"Drop Head",bold:true},"\n\n",{text:"Give player_head with profile from mannequin.",color:"gray"}]}},"]",\
    "\n      ",{text:"Model:",color:"gray"},\
    "  ","[",{text:"Reset",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3004"},hover_event:{action:"show_text",value:\
        ["",{text:"Reset",bold:true},"\n\n",{text:"Remove skin model override.",color:"gray"}]}},"]",\
    "  ","[",{text:"Wide",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3005"},hover_event:{action:"show_text",value:\
        ["",{text:"Wide",bold:true},"\n\n",{text:"Override skin model to wide.",color:"gray"}]}},"]",\
    "  ","[",{text:"Slim",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3006"},hover_event:{action:"show_text",value:\
        ["",{text:"Slim",bold:true},"\n\n",{text:"Override skin model to slim.",color:"gray"}]}},"]",\
    "\n      ",{text:"Main Hand:",color:"gray"},\
    "  ","[",{text:"right",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3007"},hover_event:{action:"show_text",value:\
        ["",{text:"right",bold:true},"\n\n",{text:"Set main hand to right.",color:"gray"}]}},"]",\
    "  ","[",{text:"left",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3008"},hover_event:{action:"show_text",value:\
        ["",{text:"left",bold:true},"\n\n",{text:"Set main hand to left.",color:"gray"}]}},"]",\
    "\n   ",{text:"Hidden Layers...",color:"dark_gray"},\
    "\n      ","[",{text:"cape",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3101"},hover_event:{action:"show_text",value:\
        ["",{text:"cape",bold:true},"\n\n",{text:"Toggle visibility for cape.",color:"gray"}]}},"]",\
    "  ","[",{text:"hat",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3102"},hover_event:{action:"show_text",value:\
        ["",{text:"hat",bold:true},"\n\n",{text:"Toggle visibility for hat.",color:"gray"}]}},"]",\
    "  ","[",{text:"jacket",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3103"},hover_event:{action:"show_text",value:\
        ["",{text:"jacket",bold:true},"\n\n",{text:"Toggle visibility for jacket.",color:"gray"}]}},"]",\
    "\n      ","[",{text:"right_sleeve",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3104"},hover_event:{action:"show_text",value:\
        ["",{text:"right_sleeve",bold:true},"\n\n",{text:"Toggle visibility for right_sleeve.",color:"gray"}]}},"]",\
    "  ","[",{text:"left_sleeve",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3105"},hover_event:{action:"show_text",value:\
        ["",{text:"left_sleeve",bold:true},"\n\n",{text:"Toggle visibility for left_sleeve.",color:"gray"}]}},"]",\
    "\n      ","[",{text:"right_pants_leg",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3106"},hover_event:{action:"show_text",value:\
        ["",{text:"right_pants_leg",bold:true},"\n\n",{text:"Toggle visibility for right_pants_leg.",color:"gray"}]}},"]",\
    "  ","[",{text:"left_pants_leg",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3107"},hover_event:{action:"show_text",value:\
        ["",{text:"left_pants_leg",bold:true},"\n\n",{text:"Toggle visibility for left_pants_leg.",color:"gray"}]}},"]",\
    "\n      ","[",{text:"Hide All",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3108"},hover_event:{action:"show_text",value:\
        ["",{text:"Hide All",bold:true},"\n\n",{text:"Set visibility for all outer layers to hidden.",color:"gray"}]}},"]",\
    "  ","[",{text:"Show All",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3109"},hover_event:{action:"show_text",value:\
        ["",{text:"Show All",bold:true},"\n\n",{text:"Set visibility for all outer layers to visible.",color:"gray"}]}},"]",\
    "\n   ",{text:"Mainhand -> Slot...",color:"dark_gray"},\
    "\n      ","[",{text:"head",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2009"},hover_event:{action:"show_text",value:\
        ["",{text:"head",bold:true},"\n\n",{text:"Copy your mainhand item to mannequin head slot.",color:"gray"}]}},"]",\
    "  ","[",{text:"chest",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2010"},hover_event:{action:"show_text",value:\
        ["",{text:"chest",bold:true},"\n\n",{text:"Copy your mainhand item to mannequin chest slot.",color:"gray"}]}},"]",\
    "  ","[",{text:"legs",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2011"},hover_event:{action:"show_text",value:\
        ["",{text:"legs",bold:true},"\n\n",{text:"Copy your mainhand item to mannequin legs slot.",color:"gray"}]}},"]",\
    "  ","[",{text:"feet",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2012"},hover_event:{action:"show_text",value:\
        ["",{text:"feet",bold:true},"\n\n",{text:"Copy your mainhand item to mannequin feet slot.",color:"gray"}]}},"]",\
    "\n      ","[",{text:"mainhand",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2013"},hover_event:{action:"show_text",value:\
        ["",{text:"mainhand",bold:true},"\n\n",{text:"Copy your mainhand item to mannequin mainhand slot.",color:"gray"}]}},"]",\
    "  ","[",{text:"offhand",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2014"},hover_event:{action:"show_text",value:\
        ["",{text:"offhand",bold:true},"\n\n",{text:"Copy your mainhand item to mannequin offhand slot.",color:"gray"}]}},"]",\
    "\n   ",{text:"Equipment...",color:"dark_gray"},\
    "\n      ","[",{text:"Copy All",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2015"},hover_event:{action:"show_text",value:\
        ["",{text:"Copy All",bold:true},"\n\n",{text:"Copy your 6 equipment slots to mannequin.",color:"gray"}]}},"]",\
    "  ","[",{text:"Drop Copies",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2016"},hover_event:{action:"show_text",value:\
        ["",{text:"Drop Copies",bold:true},"\n\n",{text:"Drops a copy of all mannequin items.",color:"gray"}]}},"]",\
    "  ","[",{text:"Swap Hands",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2017"},hover_event:{action:"show_text",value:\
        ["",{text:"Swap Hands",bold:true},"\n\n",{text:"Swap mannequin hand items.",color:"gray"}]}},"]",\
    ]
execute if score @s poser matches 3 run tellraw @s \
    [{text:"",color:"gray"},\
    "   ",{text:"Common Toggles...",color:"dark_gray"},\
    "\n      ","[",{text:"immovable",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3001"},hover_event:{action:"show_text",value:\
        ["",{text:"immovable",bold:true},"\n\n",{text:"Toggle whether mannequin can be moved by most sources. Pistons can still move the mannequin.",color:"gray"}]}},"]",\
    "  ","[",{text:"NoGravity",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2003"},hover_event:{action:"show_text",value:\
        ["",{text:"NoGravity",bold:true},"\n\n",{text:"Toggle whether mannequin reacts to gravity.",color:"gray"}]}},"]",\
    "  ","[",{text:"Invulnerable",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2001"},hover_event:{action:"show_text",value:\
        ["",{text:"Invulnerable",bold:true},"\n\n",{text:"Toggle whether mannequin can be damaged by most sources. Creative players, void damage, and /kill can still damage the mannequin.",color:"gray"}]}},"]",\
    "  ","[",{text:"Glowing",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2002"},hover_event:{action:"show_text",value:\
        ["",{text:"Glowing",bold:true},"\n\n",{text:"Toggle whether mannequin should have a glowing outline.",color:"gray"}]}},"]",\
    "\n      ","[",{text:"Silent",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2004"},hover_event:{action:"show_text",value:\
        ["",{text:"Silent",bold:true},"\n\n",{text:"Toggle whether mannequin can make sounds.",color:"gray"}]}},"]",\
    "  ","[",{text:"HasVisualFire",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2005"},hover_event:{action:"show_text",value:\
        ["",{text:"HasVisualFire",bold:true},"\n\n",{text:"Toggle whether mannequin displays fire.",color:"gray"}]}},"]",\
    "  ","[",{text:"Resistance",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2008"},hover_event:{action:"show_text",value:\
        ["",{text:"Resistance",bold:true},"\n\n",{text:"Toggle whether mannequin has max resistance.",color:"gray"}]}},"]",\
    "\n   ",{text:"Move...",color:"dark_gray"},\
    "\n      ",{text:"Align:",color:"gray"},\
    "  ","[",{text:"X",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3391"},hover_event:{action:"show_text",value:\
        ["",{text:"X",bold:true},"\n\n",{text:"Center to the nearest X coordinate.",color:"gray"}]}},"]",\
    "  ","[",{text:"Y",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3392"},hover_event:{action:"show_text",value:\
        ["",{text:"Y",bold:true},"\n\n",{text:"Center to the nearest Y coordinate.",color:"gray"}]}},"]",\
    "  ","[",{text:"Z",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3393"},hover_event:{action:"show_text",value:\
        ["",{text:"Z",bold:true},"\n\n",{text:"Center to the nearest Z coordinate.",color:"gray"}]}},"]",\
    "  ","[",{text:"South",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3395"},hover_event:{action:"show_text",value:\
        ["",{text:"South",bold:true},"\n\n",{text:"Rotate to reset yaw to 0.",color:"gray"}]}},"]",\
    "  ","[",{text:"Flat",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3394"},hover_event:{action:"show_text",value:\
        ["",{text:"Flat",bold:true},"\n\n",{text:"Rotate to reset pitch to 0.",color:"gray"}]}},"]",\
    "\n      ",{text:"X:",color:"gray"},\
    "  ","[",{text:"-1",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3301"},hover_event:{action:"show_text",value:\
        ["",{text:"-1",bold:true},"\n\n",{text:"Teleport along X axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"-1/4",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3302"},hover_event:{action:"show_text",value:\
        ["",{text:"-1/4",bold:true},"\n\n",{text:"Teleport along X axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"-1/16",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3303"},hover_event:{action:"show_text",value:\
        ["",{text:"-1/16",bold:true},"\n\n",{text:"Teleport along X axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"+1/16",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3304"},hover_event:{action:"show_text",value:\
        ["",{text:"+1/16",bold:true},"\n\n",{text:"Teleport along X axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"+1/4",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3305"},hover_event:{action:"show_text",value:\
        ["",{text:"+1/4",bold:true},"\n\n",{text:"Teleport along X axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"+1",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3306"},hover_event:{action:"show_text",value:\
        ["",{text:"+1",bold:true},"\n\n",{text:"Teleport along X axis.",color:"gray"}]}},"]",\
    "\n      ",{text:"Y:",color:"gray"},\
    "  ","[",{text:"-1",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3321"},hover_event:{action:"show_text",value:\
        ["",{text:"-1",bold:true},"\n\n",{text:"Teleport along Y axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"-1/4",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3322"},hover_event:{action:"show_text",value:\
        ["",{text:"-1/4",bold:true},"\n\n",{text:"Teleport along Y axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"-1/16",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3323"},hover_event:{action:"show_text",value:\
        ["",{text:"-1/16",bold:true},"\n\n",{text:"Teleport along Y axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"+1/16",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3324"},hover_event:{action:"show_text",value:\
        ["",{text:"+1/16",bold:true},"\n\n",{text:"Teleport along Y axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"+1/4",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3325"},hover_event:{action:"show_text",value:\
        ["",{text:"+1/4",bold:true},"\n\n",{text:"Teleport along Y axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"+1",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3326"},hover_event:{action:"show_text",value:\
        ["",{text:"+1",bold:true},"\n\n",{text:"Teleport along Y axis.",color:"gray"}]}},"]",\
    "\n      ",{text:"Z:",color:"gray"},\
    "  ","[",{text:"-1",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3341"},hover_event:{action:"show_text",value:\
        ["",{text:"-1",bold:true},"\n\n",{text:"Teleport along Z axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"-1/4",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3342"},hover_event:{action:"show_text",value:\
        ["",{text:"-1/4",bold:true},"\n\n",{text:"Teleport along Z axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"-1/16",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3343"},hover_event:{action:"show_text",value:\
        ["",{text:"-1/16",bold:true},"\n\n",{text:"Teleport along Z axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"+1/16",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3344"},hover_event:{action:"show_text",value:\
        ["",{text:"+1/16",bold:true},"\n\n",{text:"Teleport along Z axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"+1/4",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3345"},hover_event:{action:"show_text",value:\
        ["",{text:"+1/4",bold:true},"\n\n",{text:"Teleport along Z axis.",color:"gray"}]}},"]",\
    "  ","[",{text:"+1",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3346"},hover_event:{action:"show_text",value:\
        ["",{text:"+1",bold:true},"\n\n",{text:"Teleport along Z axis.",color:"gray"}]}},"]",\
    "\n      ",{text:"Yaw:",color:"gray"},\
    "  ","[",{text:"-90",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3361"},hover_event:{action:"show_text",value:\
        ["",{text:"-90",bold:true},"\n\n",{text:"Rotate horizontally.",color:"gray"}]}},"]",\
    "  ","[",{text:"-45",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3362"},hover_event:{action:"show_text",value:\
        ["",{text:"-45",bold:true},"\n\n",{text:"Rotate horizontally.",color:"gray"}]}},"]",\
    "  ","[",{text:"-22.5",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3363"},hover_event:{action:"show_text",value:\
        ["",{text:"-22.5",bold:true},"\n\n",{text:"Rotate horizontally.",color:"gray"}]}},"]",\
    "  ","[",{text:"22.5",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3364"},hover_event:{action:"show_text",value:\
        ["",{text:"22.5",bold:true},"\n\n",{text:"Rotate horizontally.",color:"gray"}]}},"]",\
    "  ","[",{text:"45",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3365"},hover_event:{action:"show_text",value:\
        ["",{text:"45",bold:true},"\n\n",{text:"Rotate horizontally.",color:"gray"}]}},"]",\
    "  ","[",{text:"90",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3366"},hover_event:{action:"show_text",value:\
        ["",{text:"90",bold:true},"\n\n",{text:"Rotate horizontally.",color:"gray"}]}},"]",\
    "  ","[",{text:"180",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3367"},hover_event:{action:"show_text",value:\
        ["",{text:"180",bold:true},"\n\n",{text:"Rotate horizontally.",color:"gray"}]}},"]",\
    "\n      ",{text:"Pitch:",color:"gray"},\
    "  ","[",{text:"-90",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3381"},hover_event:{action:"show_text",value:\
        ["",{text:"-90",bold:true},"\n\n",{text:"Rotate vertically.",color:"gray"}]}},"]",\
    "  ","[",{text:"-45",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3382"},hover_event:{action:"show_text",value:\
        ["",{text:"-45",bold:true},"\n\n",{text:"Rotate vertically.",color:"gray"}]}},"]",\
    "  ","[",{text:"-22.5",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3383"},hover_event:{action:"show_text",value:\
        ["",{text:"-22.5",bold:true},"\n\n",{text:"Rotate vertically.",color:"gray"}]}},"]",\
    "  ","[",{text:"22.5",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3384"},hover_event:{action:"show_text",value:\
        ["",{text:"22.5",bold:true},"\n\n",{text:"Rotate vertically.",color:"gray"}]}},"]",\
    "  ","[",{text:"45",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3385"},hover_event:{action:"show_text",value:\
        ["",{text:"45",bold:true},"\n\n",{text:"Rotate vertically.",color:"gray"}]}},"]",\
    "  ","[",{text:"90",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3386"},hover_event:{action:"show_text",value:\
        ["",{text:"90",bold:true},"\n\n",{text:"Rotate vertically.",color:"gray"}]}},"]",\
    ]
execute if score @s poser matches 4 run tellraw @s \
    [{text:"",color:"gray"},\
    "   ",{text:"Command Suggestions...",color:"dark_gray"},\
    "\n      ",{text:"Profile Override:",color:"gray"},\
    "  ","[",{text:"Texture...",color:"#DDDDDD",click_event:{action:"suggest_command",command:"/data modify entity @n[type=mannequin,distance=..10] profile.texture set value \"\""},hover_event:{action:"show_text",value:\
        ["",{text:"Texture Override...",bold:true},"\n\n",{text:"Expects resource location of a texture.",color:"gray"}]}},"]",\
    "  ","[",{text:"Cape...",color:"#DDDDDD",click_event:{action:"suggest_command",command:"/data modify entity @n[type=mannequin,distance=..10] profile.cape set value \"\""},hover_event:{action:"show_text",value:\
        ["",{text:"Cape Override...",bold:true},"\n\n",{text:"Expects resource location of a texture.",color:"gray"}]}},"]",\
    "  ","[",{text:"Elytra...",color:"#DDDDDD",click_event:{action:"suggest_command",command:"/data modify entity @n[type=mannequin,distance=..10] profile.elytra set value \"\""},hover_event:{action:"show_text",value:\
        ["",{text:"Elytra Override...",bold:true},"\n\n",{text:"Expects resource location of a texture.",color:"gray"}]}},"]",\
    "\n      ",{text:"Attribute:",color:"gray"},\
    "  ","[",{text:"Scale...",color:"#DDDDDD",click_event:{action:"suggest_command",command:"/attribute @n[type=mannequin,distance=..10] scale base set "},hover_event:{action:"show_text",value:\
        ["",{text:"Scale...",bold:true},"\n\n",{text:"Expects double .0625 to 16.",color:"gray"}]}},"]",\
    ]

execute if score @s poser matches 1 run return run tellraw @s \
    [\
    {text:"",color:"gray"},{text:"------ ",color:"dark_gray"},\
    {text:"Page:",color:"dark_purple"},\
    " ","[",{text:"1",color:"dark_gray",click_event:{action:"run_command",command:"/trigger poser set 1"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 1",bold:true},"\n\n",{text:"Configure Poser",color:"gray"}]}},"]",\
    " ","[",{text:"2",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 2",bold:true},"\n\n",{text:"Skin & Equipment",color:"gray"}]}},"]",\
    " ","[",{text:"3",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 3",bold:true},"\n\n",{text:"Entity Data",color:"gray"}]}},"]",\
    " ","[",{text:"4",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 4"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 4",bold:true},"\n\n",{text:"Command Suggestions",color:"gray"}]}},"]",\
    {text:" ------",color:"dark_gray"}\
    ]
execute if score @s poser matches 2 run return run tellraw @s \
    [\
    {text:"",color:"gray"},{text:"------ ",color:"dark_gray"},\
    {text:"Page:",color:"dark_purple"},\
    " ","[",{text:"1",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 1"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 1",bold:true},"\n\n",{text:"Configure Poser",color:"gray"}]}},"]",\
    " ","[",{text:"2",color:"dark_gray",click_event:{action:"run_command",command:"/trigger poser set 2"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 2",bold:true},"\n\n",{text:"Skin & Equipment",color:"gray"}]}},"]",\
    " ","[",{text:"3",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 3",bold:true},"\n\n",{text:"Entity Data",color:"gray"}]}},"]",\
    " ","[",{text:"4",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 4"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 4",bold:true},"\n\n",{text:"Command Suggestions",color:"gray"}]}},"]",\
    {text:" ------",color:"dark_gray"}\
    ]
execute if score @s poser matches 3 run return run tellraw @s \
    [\
    {text:"",color:"gray"},{text:"------ ",color:"dark_gray"},\
    {text:"Page:",color:"dark_purple"},\
    " ","[",{text:"1",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 1"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 1",bold:true},"\n\n",{text:"Configure Poser",color:"gray"}]}},"]",\
    " ","[",{text:"2",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 2",bold:true},"\n\n",{text:"Skin & Equipment",color:"gray"}]}},"]",\
    " ","[",{text:"3",color:"dark_gray",click_event:{action:"run_command",command:"/trigger poser set 3"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 3",bold:true},"\n\n",{text:"Entity Data",color:"gray"}]}},"]",\
    " ","[",{text:"4",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 4"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 4",bold:true},"\n\n",{text:"Command Suggestions",color:"gray"}]}},"]",\
    {text:" ------",color:"dark_gray"}\
    ]
execute if score @s poser matches 4 run return run tellraw @s \
    [\
    {text:"",color:"gray"},{text:"------ ",color:"dark_gray"},\
    {text:"Page:",color:"dark_purple"},\
    " ","[",{text:"1",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 1"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 1",bold:true},"\n\n",{text:"Configure Poser",color:"gray"}]}},"]",\
    " ","[",{text:"2",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 2"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 2",bold:true},"\n\n",{text:"Skin & Equipment",color:"gray"}]}},"]",\
    " ","[",{text:"3",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger poser set 3"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 3",bold:true},"\n\n",{text:"Entity Data",color:"gray"}]}},"]",\
    " ","[",{text:"4",color:"dark_gray",click_event:{action:"run_command",command:"/trigger poser set 4"},hover_event:{action:"show_text",value:\
        ["",{text:"Page 4",bold:true},"\n\n",{text:"Command Suggestions",color:"gray"}]}},"]",\
    {text:" ------",color:"dark_gray"}\
    ]

execute if score @s poser matches ..1000 run tellraw @s [{text:"Invalid trigger input for 'poser': ",color:"red"},{score:{name:"@s",objective:"poser"}}]

execute if score @s poser matches 1001 run function 42:posers/trigger/action/detect_nearest_mannequin

execute if score @s poser matches 1002..1499 run tellraw @s [{text:"Invalid trigger input for 'poser': ",color:"red"},{score:{name:"@s",objective:"poser"}}]

execute if score @s poser matches 1500.. run function 42:posers/trigger/poser_switch_score
tag @a remove 42.tag.posers.this_trigger_player
tag @e remove 42.tag.posers.this_trigger_mannequin
tag @e remove 42.tag.posers.this_trigger_mannequin_tp