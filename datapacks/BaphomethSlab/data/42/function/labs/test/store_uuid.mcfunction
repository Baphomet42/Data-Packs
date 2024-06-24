# example: `/function 42:labs/test/store_uuid {path:"foo.bar",nbt:{a:1,b:2b}}`

data remove storage 42:labs data.temp
data modify storage 42:labs data.temp.uuid set from entity @s UUID
$data modify storage 42:labs data.temp.path set value $(path)
$data modify storage 42:labs data.temp.nbt set value $(nbt)
function 42:labs/test/logic/store_uuid with storage 42:labs data.temp
data remove storage 42:labs data.temp