execute if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{raygun:{}}}}}] run return run \
    playsound minecraft:entity.allay.hurt player @a ~ ~ ~ 1 1.375

playsound entity.generic.explode player @a ~ ~ ~ 1 2