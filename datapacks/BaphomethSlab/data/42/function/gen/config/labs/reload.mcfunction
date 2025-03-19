schedule function 42:gen/config/refresh_pack_list 5t replace

scoreboard players set #42.var.labs.config.autoteam 42.obj.labs.vars 0
execute unless data storage 42:config settings.labs{autoteam:true} unless data storage 42:config settings.labs{autoteam:false} run data modify storage 42:config settings.labs.autoteam set value false
execute if data storage 42:config settings.labs{autoteam:true} run scoreboard players set #42.var.labs.config.autoteam 42.obj.labs.vars 1

schedule clear 42:labs/rank/tick
execute if score #42.var.labs.config.autoteam 42.obj.labs.vars matches 1 run schedule function 42:labs/rank/tick 1t replace