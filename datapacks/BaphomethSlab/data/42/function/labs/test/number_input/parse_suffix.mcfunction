data modify storage ns:example data.base set from storage ns:example data.number

execute if data storage ns:example {data:{suffix:"b"}} run return run data modify storage ns:example data.scale set value 1000000000

execute if data storage ns:example {data:{suffix:"m"}} run return run data modify storage ns:example data.scale set value 1000000

execute if data storage ns:example {data:{suffix:"k"}} run return run data modify storage ns:example data.scale set value 1000

# fallback case

data modify storage ns:example data.scale set value 1

data modify storage ns:example data.base set from storage ns:example data.input