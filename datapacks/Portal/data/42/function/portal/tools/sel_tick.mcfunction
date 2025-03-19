tag @s add 42.tag.portal.sel
title @p[tag=42.tag.portal.selected] actionbar [{text:"Selected ",color:"aqua",bold:true},{selector:"@s"}]
particle minecraft:glow_squid_ink ~ ~ ~ .5 1 .5 0 1

execute if entity @s[tag=42.tag.portal.wire] at @s run function 42:portal/wire/sel_tick