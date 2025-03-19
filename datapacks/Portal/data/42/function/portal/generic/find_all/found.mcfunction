execute positioned ~ ~-.5 ~ run function 42:portal/tools/notif
execute positioned ~ ~-.5 ~ run data merge entity @e[tag=42.tag.portal.notif,limit=1,sort=nearest] {CustomName:{text:"<!>",color:"red"}}