cards = ['Jack', 'Queen', 'King', 'Ace', 'Joker']
scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

cards.shuffle.each { | card | puts "#{card.upcase} - #{card.length}" }

cards.shuffle.reverse_each { | card | puts "#{card.upcase} - #{card.length}" }

scores.each { |name, score| puts "#{name} scored a #{score}" }
