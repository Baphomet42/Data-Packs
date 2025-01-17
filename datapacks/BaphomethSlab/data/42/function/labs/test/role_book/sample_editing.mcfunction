# disable role 3
data modify storage 42:labs test.role_data[0].roles[{id:"3"}].disabled set value {}

# disable role 108
data modify storage 42:labs test.role_data[2].roles[{id:"108"}].disabled set value {}

# enable role 3
data remove storage 42:labs test.role_data[].roles[{id:"3"}].disabled