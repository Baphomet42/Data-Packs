$data modify storage ns:example data.result set value $(base)

$execute store result storage ns:example data.result int 1 run data get storage ns:example data.result $(scale)