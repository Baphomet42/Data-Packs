tag @e remove 42.tag.portal.wire.this
tag @s add 42.tag.portal.wire.this
execute as @e[tag=42.tag.portal.wire] if score @s 42.obj.portal.link = @e[tag=42.tag.portal.wire.this,limit=1] 42.obj.portal.link if entity @s[tag=!42.tag.portal.wire.lbl] run data modify entity @s block_state.Name set value light_blue_concrete
execute as @e[tag=42.tag.portal.wire] if score @s 42.obj.portal.link = @e[tag=42.tag.portal.wire.this,limit=1] 42.obj.portal.link if entity @s[tag=42.tag.portal.wire.lbl] run data modify entity @s text set value {text:"\u274C",color:"black"}
tag @s remove 42.tag.portal.wire.this