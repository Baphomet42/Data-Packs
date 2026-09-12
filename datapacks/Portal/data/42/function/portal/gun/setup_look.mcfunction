# keep consistent with gun/particle, gun/setup_look, gun/use, portal/particle, portal/set_name, portal/set_color_dis, portal/set_back_color_dis, portal/skin

execute unless data storage 42:portal temp.args.main unless data storage 42:portal temp.args.alt run return 0
data modify storage 42:portal temp.merge.minecraft:item_name set value [{text:"Portal Gun",color:"white"}]
data modify storage 42:portal temp.merge.minecraft:item_name append value " "

execute if data storage 42:portal temp.args.main run data modify storage 42:portal temp.merge.minecraft:item_name append value {text:"0",color:"#F9FFFE"}
execute if data storage 42:portal temp.args.main{color:0} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#F9FFFE"
execute if data storage 42:portal temp.args.main{color:1} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#9D9D97"
execute if data storage 42:portal temp.args.main{color:2} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#474F52"
execute if data storage 42:portal temp.args.main{color:3} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#1D1D21"
execute if data storage 42:portal temp.args.main{color:4} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#835432"
execute if data storage 42:portal temp.args.main{color:5} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#B02E26"
execute if data storage 42:portal temp.args.main{color:6} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#F9801D"
execute if data storage 42:portal temp.args.main{color:7} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#FED83D"
execute if data storage 42:portal temp.args.main{color:8} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#80C71F"
execute if data storage 42:portal temp.args.main{color:9} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#5E7C16"
execute if data storage 42:portal temp.args.main{color:10} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#169C9C"
execute if data storage 42:portal temp.args.main{color:11} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#3AB3DA"
execute if data storage 42:portal temp.args.main{color:12} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#3C44AA"
execute if data storage 42:portal temp.args.main{color:13} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#8932B8"
execute if data storage 42:portal temp.args.main{color:14} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#C74EBD"
execute if data storage 42:portal temp.args.main{color:15} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#F38BAA"
execute if data storage 42:portal temp.args.main{color:16} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#420666"

execute if data storage 42:portal temp.args.alt run data modify storage 42:portal temp.merge.minecraft:item_name append value {text:"0",color:"#F9FFFE"}
execute if data storage 42:portal temp.args.alt{color:0} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#F9FFFE"
execute if data storage 42:portal temp.args.alt{color:1} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#9D9D97"
execute if data storage 42:portal temp.args.alt{color:2} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#474F52"
execute if data storage 42:portal temp.args.alt{color:3} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#1D1D21"
execute if data storage 42:portal temp.args.alt{color:4} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#835432"
execute if data storage 42:portal temp.args.alt{color:5} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#B02E26"
execute if data storage 42:portal temp.args.alt{color:6} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#F9801D"
execute if data storage 42:portal temp.args.alt{color:7} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#FED83D"
execute if data storage 42:portal temp.args.alt{color:8} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#80C71F"
execute if data storage 42:portal temp.args.alt{color:9} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#5E7C16"
execute if data storage 42:portal temp.args.alt{color:10} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#169C9C"
execute if data storage 42:portal temp.args.alt{color:11} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#3AB3DA"
execute if data storage 42:portal temp.args.alt{color:12} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#3C44AA"
execute if data storage 42:portal temp.args.alt{color:13} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#8932B8"
execute if data storage 42:portal temp.args.alt{color:14} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#C74EBD"
execute if data storage 42:portal temp.args.alt{color:15} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#F38BAA"
execute if data storage 42:portal temp.args.alt{color:16} run data modify storage 42:portal temp.merge.minecraft:item_name[-1].color set value "#420666"

data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[16383998]}

execute if data storage 42:portal temp.args.main{color:0} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[16383998]}
execute if data storage 42:portal temp.args.main{color:1} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[10329495]}
execute if data storage 42:portal temp.args.main{color:2} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[4673362]}
execute if data storage 42:portal temp.args.main{color:3} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[1908001]}
execute if data storage 42:portal temp.args.main{color:4} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[8606770]}
execute if data storage 42:portal temp.args.main{color:5} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[11546150]}
execute if data storage 42:portal temp.args.main{color:6} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[16351261]}
execute if data storage 42:portal temp.args.main{color:7} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[16701501]}
execute if data storage 42:portal temp.args.main{color:8} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[8439583]}
execute if data storage 42:portal temp.args.main{color:9} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[6192150]}
execute if data storage 42:portal temp.args.main{color:10} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[1481884]}
execute if data storage 42:portal temp.args.main{color:11} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[3847130]}
execute if data storage 42:portal temp.args.main{color:12} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[3949738]}
execute if data storage 42:portal temp.args.main{color:13} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[8991416]}
execute if data storage 42:portal temp.args.main{color:14} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[13061821]}
execute if data storage 42:portal temp.args.main{color:15} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[15961002]}
execute if data storage 42:portal temp.args.main{color:16} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[4327014]}

execute if data storage 42:portal temp.args.alt{color:0} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[16383998]}
execute if data storage 42:portal temp.args.alt{color:1} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[10329495]}
execute if data storage 42:portal temp.args.alt{color:2} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[4673362]}
execute if data storage 42:portal temp.args.alt{color:3} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[1908001]}
execute if data storage 42:portal temp.args.alt{color:4} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[8606770]}
execute if data storage 42:portal temp.args.alt{color:5} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[11546150]}
execute if data storage 42:portal temp.args.alt{color:6} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[16351261]}
execute if data storage 42:portal temp.args.alt{color:7} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[16701501]}
execute if data storage 42:portal temp.args.alt{color:8} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[8439583]}
execute if data storage 42:portal temp.args.alt{color:9} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[6192150]}
execute if data storage 42:portal temp.args.alt{color:10} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[1481884]}
execute if data storage 42:portal temp.args.alt{color:11} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[3847130]}
execute if data storage 42:portal temp.args.alt{color:12} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[3949738]}
execute if data storage 42:portal temp.args.alt{color:13} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[8991416]}
execute if data storage 42:portal temp.args.alt{color:14} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[13061821]}
execute if data storage 42:portal temp.args.alt{color:15} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[15961002]}
execute if data storage 42:portal temp.args.alt{color:16} run return run data modify storage 42:portal temp.merge.minecraft:custom_model_data set value {colors:[4327014]}