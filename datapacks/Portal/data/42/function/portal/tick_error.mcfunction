execute unless data storage 42:portal tick.sent_warning run tellraw @a \
    [{text:"42datapack error (3): Portal tick function was halted. Use `/reload` to resume.",color:"red"},\
    " ",{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:"Functions being halted before finishing can result in corrupted data. It is recommended to backup your world now and monitor the datapack after resuming the tick function.\n\nThis can happen from game crashes or from the max_command_sequence_length or max_command_forks gamerules. Consider increasing the gamerules before resuming the tick function."}}]

data modify storage 42:portal tick.sent_warning set value {}