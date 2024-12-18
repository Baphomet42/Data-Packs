execute if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{raygun:{}}}}}] run playsound block.vault.insert_item player @a ~ ~ ~ .375 1.25
execute if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{raygun:{}}}}}] run return run playsound block.beacon.activate player @a ~ ~ ~ .375 2

playsound block.vault.insert_item player @a ~ ~ ~ .375 1.25