execute if items entity @s weapon.mainhand *[damage~{damage:0}] run return 0
item modify entity @s weapon.mainhand {function:"set_damage",damage:1}

execute if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{raygun:{}}}}}] run playsound block.beacon.activate player @a ~ ~ ~ .375 2

playsound block.vault.insert_item player @a ~ ~ ~ .375 1.25