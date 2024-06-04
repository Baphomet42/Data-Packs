tag @e remove 42.portal_wire_this
tag @s add 42.portal_wire_this
execute as @e[tag=42.portal_wire] if score @s 42.portal_link = @e[tag=42.portal_wire_this,limit=1] 42.portal_link if entity @s[tag=!42.portal_wire_lbl] run data modify entity @s block_state.Name set value orange_concrete
execute as @e[tag=42.portal_wire] if score @s 42.portal_link = @e[tag=42.portal_wire_this,limit=1] 42.portal_link if entity @s[tag=42.portal_wire_lbl] run data modify entity @s text set value '{"text":"\\u2714","color":"black"}'
tag @s remove 42.portal_wire_this