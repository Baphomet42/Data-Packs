scoreboard players enable @a 42menu
tellraw @a[scores={42menu=1}] {text:"------------------------------",color:"dark_gray"}
tellraw @a[scores={42menu=1}] [{text:"     ",color:"black"},"<",{text:"<",color:"white"},"< ",{text:"42menu",color:"gold",\
    hover_event:{action:"show_text",value:["/trigger 42menu","\n","View options for datapacks","\n",\
    {text:"by BaphomethLabs",color:"gold",italic:true}]}},"  ",\
    {text:"[",color:"gray"},{text:"GitHub link",color:"#DDDDDD",hover_event:{action:"show_text",value:[{text:""},{text:"https://github.com/Baphomet42/Data-Packs",color:"blue",underlined:true},{text:"\nClick to view detailed information about 42datapacks"}]},\
    click_event:{action:"open_url",url:"https://github.com/Baphomet42/Data-Packs"}},{text:"]",color:"gray"},\
    " >",{text:">",color:"white"},">"]
execute as @a[scores={42menu=1..}] at @s run function #42:menu
execute as @a[scores={42menu=..-1}] at @s run function #42:menu
scoreboard players set @a 42menu 0
schedule function 42:42menu 1t replace