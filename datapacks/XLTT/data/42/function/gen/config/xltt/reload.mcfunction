schedule function 42:gen/config/refresh_pack_list 5t replace

scoreboard players set #42.var.xltt.config.resourcepack 42.obj.xltt.vars 0
execute unless data storage 42:config settings.xltt{resourcepack:true} unless data storage 42:config settings.xltt{resourcepack:false} run data modify storage 42:config settings.xltt.resourcepack set value true
execute if data storage 42:config settings.xltt{resourcepack:true} run scoreboard players set #42.var.xltt.config.resourcepack 42.obj.xltt.vars 1