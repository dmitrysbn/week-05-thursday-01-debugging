def select_cards(possible_cards, hand)

  picked_up_cards = 0

  while picked_up_cards < 3

    possible_cards.each do |current_card|
      if picked_up_cards < 3
        print "Do you want to pick up #{current_card}?"
        answer = gets.chomp

        if answer.downcase == 'y'
          hand << current_card
          picked_up_cards += 1
        end

      else
        print "You've already picked up 3 cards. "
        return hand
      end

    end

  end

  return hand
end

available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"
