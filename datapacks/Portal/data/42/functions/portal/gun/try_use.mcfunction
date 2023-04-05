scoreboard players reset @s 42.portal_gun_use
execute if entity @s[nbt={SelectedItem:{tag:{portal_blue:1b}}}] run function 42:portal/gun/use_blue
execute if entity @s[nbt={SelectedItem:{tag:{portal_orange:1b}}}] run function 42:portal/gun/use_orange