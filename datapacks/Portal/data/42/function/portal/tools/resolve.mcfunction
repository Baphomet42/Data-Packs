tag @e remove 42.tag.portal.temp
$execute at @s run summon text_display ~ ~ ~ {Tags:["42.tag.portal.temp"],view_range:0f,alignment:"center",text:$(text)}
$data modify entity @s $(tag) set from entity @e[limit=1,type=text_display,tag=42.tag.portal.temp] text
kill @e[limit=1,type=text_display,tag=42.tag.portal.temp]