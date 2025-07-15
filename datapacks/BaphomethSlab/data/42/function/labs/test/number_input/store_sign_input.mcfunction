# store the literal string input

data modify storage ns:example data.input set string block 0 4 0 front_text.messages[0]

# split the entire string except the final character

data modify storage ns:example data.number set string storage ns:example data.input 0 -1

# split just the final character

data modify storage ns:example data.suffix set string storage ns:example data.input -1