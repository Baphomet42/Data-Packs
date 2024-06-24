# example: `/function 42:labs/test/macro_json {text:"test",color:"blue"}`

# prints json with text and color
$tellraw @a {"text":"$(text)","color":"$(color)"}

# sometimes throws error for invalid escape, other times prints messed up text
$tellraw @a {"text":"\$(text)","color":"$(color)"}

# prints literal $(text)
$tellraw @a {"text":"\u0024(text)","color":"$(color)"}

# prints "$(" + macro text + ")"
$tellraw @a {"text":"\u0024($(text))","color":"$(color)"}