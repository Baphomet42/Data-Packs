playsound minecraft:entity.axolotl.splash block @a ~ ~ ~ 1 2

execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ #42:portal/gel_unstable run function 42:portal/gel/surface/spawn

function 42:portal/gel/fizzle