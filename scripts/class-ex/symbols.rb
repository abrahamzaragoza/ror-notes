Symbol.all_symbols.size
# 6638
my_hash = { :one => 1, :two => 2, :three => 3 }
Symbol.all_symbols.size
# 6652
=begin
Al crear hashes con symbols, si aumenta la cantidad total de symbolos. Sin embargo,
unicamente se suma el valor de la variable (que contiene el hash). De modo que si
se agregan mas symbols a la variable, no aumenta el total de symbols.

Symbol.all_symbols.size
> 6663
variable = { :a => 'algo' }
> {:a=>"algo"
Symbol.all_symbols.size
> 6669
variable[:c] = 'otro'
> "otro"
Symbol.all_symbols.size
> 6669
=end
