# clean up old results

data remove storage ns:example data

# store the sign input into storage

function 42:labs/test/number_input/store_sign_input

# calculate the correct scale depending on the suffix

function 42:labs/test/number_input/parse_suffix

# store the final number as a double

function 42:labs/test/number_input/store_result with storage ns:example data

# validate

function 42:labs/test/number_input/validate

# clean up results

data remove storage ns:example data