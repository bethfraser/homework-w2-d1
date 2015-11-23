require_relative('animal_classes')

bobby = Bear.new('Bobby', 'panda')
rupert = Bear.new('Rupert', 'brown')

jeremy = Fish.new('Jeremy', 'salmon')
susan = Fish.new('Susan', 'trout')
nemo = Fish.new('Nemo', 'clownfish')
henry = Fish.new('Henry', 'salmon')
# richard = Fish.new('Richard', 'salmon')

fishes = [jeremy, susan, nemo, henry]

river = River.new(fishes)

bobby.roar
rupert.roar
puts "\n"

river.view_fish

bobby.take_fish_from(river)
puts "\n"
bobby.eaten
puts "\n"

river.view_fish

rupert.fussy_eater(river, "salmon")
puts "\n"
rupert.eaten
puts "\n"

river.view_fish

rupert.fussy_eater(river, "salmon")


nemo.wiggle
