tellraw @a ["",\
    [{text:"42datapack error (3): Failed to load Portal level with id [",color:"red"},\
    {storage:"42:portal",nbt:"loader.lvl"},\
    "]. Not all chunks are loaded surrounding equipment at [",\
    {storage:"42:portal",nbt:"loader.error.entity.pos_x"},", ",{storage:"42:portal",nbt:"loader.error.entity.pos_y"},", ",{storage:"42:portal",nbt:"loader.error.entity.pos_z"},\
    "]"],\
    " ",{text:"[?]",color:"dark_purple",hover_event:{action:"show_text",value:"Click [Restart Level] in 42menu to try again"}}]