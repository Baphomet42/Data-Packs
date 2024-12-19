$data modify storage 42:src craft_temp.args set value $(args)
execute if data storage 42:src craft_temp.args.hide_warns run scoreboard players set #42.var.src.temp.hide_warns 42.obj.src.temp 1

# setup

data modify storage 42:src craft_temp.macro.flags set value {}
data modify storage 42:src craft_temp.macro.overrides set value {}

# required args

execute unless data storage 42:src craft_temp.args.name run tellraw @s \
    {"text":"Missing gun craft args: No key 'name'","color":"red",\
    "hoverEvent":{"action":"show_text","contents":"\
        Key: name\
        \nType: String\
        \nDescription: Literal string name for item name\
        \nExpected values: String with literal single quotes prefixed with 2 backslashes and literal double quotes prefixed with 5 backslashes\
        \nDefault: \"Gun\"\
    "}}
data modify storage 42:src craft_temp.macro.name set from storage 42:src craft_temp.args.name
execute unless data storage 42:src craft_temp.args.name run data modify storage 42:src craft_temp.macro.name set value "Gun"

execute unless data storage 42:src craft_temp.args.model run tellraw @s \
    {"text":"Missing gun craft args: No key 'model'","color":"red",\
    "hoverEvent":{"action":"show_text","contents":"\
        Key: model\
        \nType: String\
        \nDescription: Item model\
        \nExpected values: Valid namespace\
        \nDefault: \"echo_shard\"\
    "}}
data modify storage 42:src craft_temp.macro.model set from storage 42:src craft_temp.args.model
execute unless data storage 42:src craft_temp.args.model run data modify storage 42:src craft_temp.macro.model set value "echo_shard"

execute unless data storage 42:src craft_temp.args.ammo run tellraw @s \
    {"text":"Missing gun craft args: No key 'ammo'","color":"red",\
    "hoverEvent":{"action":"show_text","contents":"\
        Key: ammo\
        \nType: Int\
        \nDescription: Max ammo count\
        \nExpected values: Positive integer\
        \nDefault: 10\
    "}}
data modify storage 42:src craft_temp.macro.ammo set from storage 42:src craft_temp.args.ammo
execute unless data storage 42:src craft_temp.args.ammo run data modify storage 42:src craft_temp.macro.ammo set value 10

execute unless data storage 42:src craft_temp.args.shoot_cooldown run tellraw @s \
    {"text":"Missing gun craft args: No key 'shoot_cooldown'","color":"red",\
    "hoverEvent":{"action":"show_text","contents":"\
        Key: shoot_cooldown\
        \nType: Int\
        \nDescription: Minimum ticks between shots\
        \nExpected values: Positive integer\
        \nDefault: 3\
    "}}
data modify storage 42:src craft_temp.macro.shoot_cooldown set from storage 42:src craft_temp.args.shoot_cooldown
execute unless data storage 42:src craft_temp.args.shoot_cooldown run data modify storage 42:src craft_temp.macro.shoot_cooldown set value 3

execute unless data storage 42:src craft_temp.args.reload_time run tellraw @s \
    {"text":"Missing gun craft args: No key 'reload_time'","color":"red",\
    "hoverEvent":{"action":"show_text","contents":"\
        Key: reload_time\
        \nType: Int\
        \nDescription: Time to reload in ticks\
        \nExpected values: Positive integer\
        \nDefault: 20\
    "}}
data modify storage 42:src craft_temp.macro.reload_time set from storage 42:src craft_temp.args.reload_time
execute unless data storage 42:src craft_temp.args.reload_time run data modify storage 42:src craft_temp.macro.reload_time set value 20

# optional args

execute if data storage 42:src craft_temp.args.flags run data modify storage 42:src craft_temp.macro.flags set from storage 42:src craft_temp.args.flags
execute if data storage 42:src craft_temp.args.overrides run data modify storage 42:src craft_temp.macro.overrides set from storage 42:src craft_temp.args.overrides

# end of args

function 42:src/gun/craft/macro with storage 42:src craft_temp.macro

scoreboard players reset #42.var.src.temp.hide_warns 42.obj.src.temp
data remove storage 42:src craft_temp