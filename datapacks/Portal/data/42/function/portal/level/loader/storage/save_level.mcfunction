execute if data storage 42:portal loader.new_level unless data storage 42:portal loader.temp_level.equipment run return fail
$data remove storage 42:portal/levels levels[{lvl:$(lvl)}]

data modify storage 42:portal loader.temp_level.format set value 1
$data modify storage 42:portal loader.temp_level.lvl set value $(lvl)
$execute unless data storage 42:portal loader.temp_level.name run data modify storage 42:portal loader.temp_level.name set value "New Level ($(lvl))"

data modify storage 42:portal/levels levels append from storage 42:portal loader.temp_level