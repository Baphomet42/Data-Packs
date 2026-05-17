execute unless data storage 42:portal loader.temp_level.format run tellraw @a ["",\
    [{text:"42datapack error (3): Portal level contains unknown format. The `format` key is missing for level with id [",color:"red"},\
    {storage:"42:portal",nbt:"loader.lvl"},"] (Expected format 1)"],\
    " ",{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:"The saved data format of this level is either missing or outdated."}}]

execute if data storage 42:portal loader.temp_level.format run tellraw @a ["",\
    [{text:"42datapack error (3): Portal level contains unknown format. Found format [",color:"red"},\
    {storage:"42:portal",nbt:"loader.temp_level.format"},\
    "] for level with id [",\
    {storage:"42:portal",nbt:"loader.lvl"},"] (Expected format 1)"],\
    " ",{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:"The saved data format of this level is either missing or outdated."}}]

data remove storage 42:portal loader