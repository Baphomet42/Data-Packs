execute if score @s 42menu matches 4203000..4203999 run function 42:gen/cmdfeed/hide
tellraw @s[scores={42menu=1}] [{text:"",color:"gray"},\
    {text:"Portal",color:"gold",bold:true},\
    " ",{text:"\u2318",color:"white",click_event:{action:"run_command",command:"/function 42:gen/config/portal/menu"},hover_event:{action:"show_text",value:"Open config settings\n(requires server operator status)"}}\
    ,{text:"\n   "},{text:"Get equipment...",color:"dark_gray"}\
    ,{text:"\n      "},"[",{text:"Handheld Portal Device",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203013"}},"]"\
    ,{text:"\n      "},"[",{text:"Fizzle Tool",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203003"}},"]"\
    ,{text:"\n      "},"[",{text:"See Full List...",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203001"}},"]"\
    ,{text:"\n      "},"[",{text:"Get Everything",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203021"}},"]"\
    ,{text:"\n   Debug...",color:"dark_gray"}\
    ,{text:"\n      "},"[",{text:"Restart Level",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203100"}},"]"\
    ,{text:"\n      "},"[",{text:"Unload Level",color:"#DDDDDD",click_event:{action:"suggest_command",command:"/function 42:portal/level/unload"}},"]"\
    ,{text:"\n      "},"[",{text:"Unhide Zones",color:"#DDDDDD",click_event:{action:"suggest_command",command:"/function 42:portal/generic/show_nearby_invisibles"}},"]"\
    ]
tellraw @s[scores={42menu=1,42.obj.portal.sel=1..}] [{text:"",color:"gray"},"      ","[",{text:"Refresh Selection",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203503"}},"]"]
execute if data storage 42:portal tick run return run tellraw @s [{text:"42datapack error (3): Portal tick function was halted. Use `/reload` to resume.",color:"red"},\
    " ",{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:"Functions being halted before finishing can result in corrupted data. It is recommended to backup your world now and monitor the datapack after resuming the tick function.\n\nThis can happen from game crashes or from the max_command_sequence_length or max_command_forks gamerules. Consider increasing the gamerules before resuming the tick function."}},"\n"]
execute if score @s 42menu matches 11 run function 42:gen/cmdfeed/reset
#4203001
tellraw @s[scores={42menu=4203001}] [{text:"",color:"gray"},{text:"------------------------------",color:"dark_gray"},\
    {text:"\n   "},{text:"Get equipment...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Handheld Portal Device",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203013"}},"]",\
    {text:"\n      "},"[",{text:"Co-Op Portal Guns",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203023"}},"]",\
    {text:"\n      "},"[",{text:"Disabled Portal Gun",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203024"}},"]",\
    {text:"\n      "},"[",{text:"Weighted Storage Cube",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203006"}},"]",\
    {text:"\n      "},"[",{text:"Weighted Companion Cube",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203002"}},"]",\
    {text:"\n      "},"[",{text:"Discouragement Redirection Cube",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203017"}},"]",\
    {text:"\n      "},"[",{text:"Sentry Turret",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203016"}},"]",\
    {text:"\n      "},"[",{text:"Radio",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203022"}},"]",\
    {text:"\n      "},"[",{text:"Heavy Duty Super Button",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203007"}},"]",\
    {text:"\n      "},"[",{text:"Pedestal Button",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203008"}},"]",\
    {text:"\n      "},"[",{text:"Door",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203010"}},"]",\
    {text:"\n      "},"[",{text:"Vital Apparatus Vent",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203011"}},"]",\
    {text:"\n      "},"[",{text:"Material Emancipation Grill",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203028"}},"]",\
    {text:"\n      "},"[",{text:"Elevator",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203025"}},"]",\
    {text:"\n      "},"[",{text:"Pellet Launcher",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203014"}},"]",\
    {text:"\n      "},"[",{text:"Pellet Catcher",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203015"}},"]",\
    {text:"\n      "},"[",{text:"Thermal Discouragement Beam",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203029"}},"]",\
    {text:"\n      "},"[",{text:"Discouragement Beam Receptacle",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203030"}},"]",\
    {text:"\n      "},"[",{text:"Aerial Faith Plate",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203004"}},"]",\
    {text:"\n      "},"[",{text:"Decal",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203031"}},"]",\
    {text:"\n      "},"[",{text:"Power Wire",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203026"}},"]",\
    {text:"\n      "},"[",{text:"Zone",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203027"}},"]",\
    {text:"\n      "},"[",{text:"Repulsion Gel",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203032"}},"]",\
    {text:"\n      "},"[",{text:"Propulsion Gel",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203033"}},"]",\
    {text:"\n      "},"[",{text:"Conversion Gel",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203034"}},"]",\
    {text:"\n      "},"[",{text:"Cleansing Gel",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203035"}},"]",\
    {text:"\n   "},{text:"Get tool...",color:"dark_gray"},\
    {text:"\n      "},"[",{text:"Fizzler",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203003"}},"]",\
    {text:"\n      "},"[",{text:"Select Tool",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203020"}},"]",\
    {text:"\n      "},"[",{text:"Link Equipment",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203009"}},"]",\
    {text:"\n      "},"[",{text:"Set Load Level",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203019"}},"]",\
    {text:"\n      "},"[",{text:"Cycle Type",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203012"}},"]",\
    {text:"\n      "},"[",{text:"Change Skin",color:"#DDDDDD",click_event:{action:"run_command",command:"/trigger 42menu set 4203018"}},"]",\
    ]
#4203002-4203099
execute if entity @s[tag=!42op,gamemode=!creative,scores={42menu=4203002..4203099}] run function 42:error_perms
scoreboard players set @s[tag=!42op,gamemode=!creative,scores={42menu=4203002..4203099}] 42menu 0

execute if score @s 42menu matches 4203006 run function 42:portal/cube/craft
execute if score @s 42menu matches 4203002 run function 42:portal/cube/craft_companion
execute if score @s 42menu matches 4203003 run function 42:portal/tools/craft_fizzler
execute if score @s 42menu matches 4203004 run function 42:portal/faith_plate/craft

execute if score @s 42menu matches 4203007 run function 42:portal/button/craft
execute if score @s 42menu matches 4203008 run function 42:portal/button/craft_pedestal
execute if score @s 42menu matches 4203009 run function 42:portal/tools/craft_link
execute if score @s 42menu matches 4203010 run function 42:portal/door/craft
execute if score @s 42menu matches 4203011 run function 42:portal/vent/craft
execute if score @s 42menu matches 4203012 run function 42:portal/tools/craft_cycle
execute if score @s 42menu matches 4203013 run function 42:portal/gun/craft_default
execute if score @s 42menu matches 4203014 run function 42:portal/pellet/emitter/craft
execute if score @s 42menu matches 4203015 run function 42:portal/pellet/catcher/craft
execute if score @s 42menu matches 4203016 run function 42:portal/cube/turret/craft
execute if score @s 42menu matches 4203017 run function 42:portal/cube/craft_laser
execute if score @s 42menu matches 4203018 run function 42:portal/tools/craft_skin
execute if score @s 42menu matches 4203019 run function 42:portal/tools/craft_level
execute if score @s 42menu matches 4203020 run function 42:portal/tools/craft_select
execute if score @s 42menu matches 4203021 run function #42:portal/craft_all
execute if score @s 42menu matches 4203022 run function 42:portal/cube/radio/craft
execute if score @s 42menu matches 4203023 run function 42:portal/gun/craft_coop
execute if score @s 42menu matches 4203024 run function 42:portal/gun/craft_off
execute if score @s 42menu matches 4203025 run function 42:portal/elevator/craft
execute if score @s 42menu matches 4203026 run function 42:portal/decal/wire/craft
execute if score @s 42menu matches 4203027 run function 42:portal/zone/craft
execute if score @s 42menu matches 4203028 run function 42:portal/grill/craft
execute if score @s 42menu matches 4203029 run function 42:portal/laser/emitter/craft
execute if score @s 42menu matches 4203030 run function 42:portal/laser/catcher/craft
execute if score @s 42menu matches 4203031 run function 42:portal/decal/craft
execute if score @s 42menu matches 4203032 run function 42:portal/gel/surface/craft_blue
execute if score @s 42menu matches 4203033 run function 42:portal/gel/surface/craft_orange
execute if score @s 42menu matches 4203034 run function 42:portal/gel/surface/craft_white
execute if score @s 42menu matches 4203035 run function 42:portal/gel/surface/craft_clear

execute if score @s 42menu matches 4203100 run function 42:portal/level/restart

#4203500-4203799
execute if entity @s[tag=!42op,gamemode=!creative,scores={42menu=4203500..4203799}] run function 42:error_perms
scoreboard players set @s[tag=!42op,gamemode=!creative,scores={42menu=4203500..4203799}] 42menu 0
execute if score @s 42menu matches 4203500..4203799 run function 42:portal/select_menu