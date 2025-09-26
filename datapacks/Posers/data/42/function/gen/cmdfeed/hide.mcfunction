
execute store result storage 42:gen cmdfeed_test int 1 run gamerule sendCommandFeedback
data modify storage 42:gen cmdfeed_btn set value ""
execute unless data storage 42:gen {cmdfeed_test:1} unless data storage 42:gen {cmdfeed:1} run return run data remove storage 42:gen cmdfeed_test
data modify storage 42:gen cmdfeed_btn set value [{text:" "},{text:"🖶",color:"#DDDDDD",click_event:{action:"run_command",command:"/gamerule sendCommandFeedback true"},hover_event:{action:"show_text",value:[{text:"Enable Command Feedback\n\nCommand feedback is temporarily disabled when this menu is displayed, preventing trigger messages from spamming chat. Wait a few seconds, or click here to re-enable command feedback immediately."}]}}]

data remove storage 42:gen cmdfeed_test
data modify storage 42:gen cmdfeed set value 1
gamerule sendCommandFeedback false
schedule function 42:gen/cmdfeed/reset 300t replace