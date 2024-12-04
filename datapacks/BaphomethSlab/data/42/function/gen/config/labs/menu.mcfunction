tellraw @s [{"text":"","color":"dark_gray"},\
    {"text":"------------------------------"},\
    {"text":"\nBaphomethSlab Config","color":"gold","bold":true},\
    {"text":"\n   "},{"text":"Automatic ranks..."}," ",{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":"Default: Disabled\n\nWhen Enabled: When a player joins for the first time, they are assigned to the default team (unless they already were on a team).\n\nWhen disabled: The default rank must be given manually."}},\
    {"text":"\n      "},{"text":"[Enable]","clickEvent":{"action":"run_command","value":"/function 42:gen/config/labs/autoteam/enable"},"color":"green"},\
    " ",{"text":"[Disable]","clickEvent":{"action":"run_command","value":"/function 42:gen/config/labs/autoteam/disable"},"color":"red"}]