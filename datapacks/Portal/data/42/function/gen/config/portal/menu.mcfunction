tellraw @s [{"text":"","color":"dark_gray"},\
    {"text":"------------------------------"},\
    {"text":"\nPortal Config","color":"gold","bold":true},\
    {"text":"\n   "},{"text":"Resource pack..."}," ",{"text":"[?]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":"Default: Enabled\n\nWhen Enabled: Newly generated Portal Gun items will have a custom texture when seen using the resource pack. Players without the resource pack will see a missing texture on an invalid model.\n\nWhen disabled: Newly generated Portal Gun items will appear as a Carrot or Fungus on a Stick."}},\
    {"text":"\n      "},{"text":"[Enable]","clickEvent":{"action":"run_command","value":"/function 42:gen/config/portal/resourcepack/enable"},"color":"green"},\
    " ",{"text":"[Disable]","clickEvent":{"action":"run_command","value":"/function 42:gen/config/portal/resourcepack/disable"},"color":"red"}]