execute unless data storage ns:example data.result run return run tellraw @a ["Invalid input: ",{storage:"ns:example",nbt:"data.input"}]

tellraw @a ["Result: ",{storage:"ns:example",nbt:"data.result"}]