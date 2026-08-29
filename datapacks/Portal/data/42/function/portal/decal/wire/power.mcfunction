tag @e remove 42.tag.portal.decal.wire.this
tag @s add 42.tag.portal.decal.wire.this
execute as @e[tag=42.tag.portal.decal.wire] if score @s 42.obj.portal.link = @e[tag=42.tag.portal.decal.wire.this,limit=1] 42.obj.portal.link if entity @s[tag=!42.tag.portal.decal.wire.lbl] run data modify entity @s block_state set value "minecraft:orange_concrete"
execute as @e[tag=42.tag.portal.decal.wire] if score @s 42.obj.portal.link = @e[tag=42.tag.portal.decal.wire.this,limit=1] 42.obj.portal.link if entity @s[tag=42.tag.portal.decal.wire.lbl] run data modify entity @s text set value {text:"\u2714",color:"black"}
tag @s remove 42.tag.portal.decal.wire.this