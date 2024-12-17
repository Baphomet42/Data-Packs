execute if items entity @s weapon.mainhand *[damage~{durability:0}] run return run playsound block.vault.insert_item_fail player @a ~ ~ ~ .375 1.125

playsound entity.generic.explode player @a ~ ~ ~ 1 2
item modify entity @s weapon.mainhand {function:"set_damage",add:true,damage:-.04}
function 42:src/gun/common/shoot