data modify storage 42:portal loader.new_level set value {}
$execute if data storage 42:portal/levels levels[{lvl:$(lvl)}] run data modify storage 42:portal loader.temp_level set from storage 42:portal/levels levels[{lvl:$(lvl)}]
execute if data storage 42:portal loader.temp_level run data remove storage 42:portal loader.new_level