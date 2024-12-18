execute if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{ammo:{current:{inverse:0}}}}}}] run return 0
item modify entity @s weapon.mainhand [{function:"set_damage",damage:1},{function:"set_custom_data",tag:"{42components:{src:{gun:{ammo:{current:{inverse:0}},cooldown:{current:{time:30}}}}}}"}]
function 42:src/gun/enum/reload_sound