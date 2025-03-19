schedule function 42:gen/config/refresh_pack_list 5t replace

scoreboard players set #42.var.portal.config.resourcepack 42.obj.portal.vars 0
execute unless data storage 42:config settings.portal{resourcepack:true} unless data storage 42:config settings.portal{resourcepack:false} run data modify storage 42:config settings.portal.resourcepack set value true
execute if data storage 42:config settings.portal{resourcepack:true} run scoreboard players set #42.var.portal.config.resourcepack 42.obj.portal.vars 1