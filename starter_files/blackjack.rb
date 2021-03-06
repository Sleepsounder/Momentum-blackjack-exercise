# puts "TODO Implement the game of blackjack."

# # Hint: for starters, read bin/blackjack.rb

# Require the other objects (card, deck and hand)

# Have a wallet method starting at $100 and increasing by $10 for a win and decreasing by $10 for a loss.

# Have a greeting prompting a game and asking for an action.











# card: 
# allow for card characteristics (rank and suit) to be read (attr_reader) outside of the card class.


# Define a method that allows a grab on to the card class and can pass arguments to it containing both rank and suit.

# Define a method that adds number values to cards Ace through King.

# Define a method that is able to compare whether or not a card is greater in value than another card.







# deck:

# allow for deck characteristics (card_count, shuffle, deal) to be read outside of deck class

# Define a method that allows a grab on to the deck class and can pass arguments to it containing card_count, shuffle, deal

# define a method to shuffle

# Define a variable that holds all the cards

# define a method to deal - (without repeating a card)?


class Card

    attr_reader :rank, :suit
  
    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

    def value
        value = case @rank
        when :A
            1
        when 2..10 
            @rank
        when :J
            11
        when :Q
            12
        when :K
            13
        end
    end

    def greater_than?(other_card)
        self.value > other_card.value
    end

    
end


require_relative "card"

class Deck
    
    # #these below are "constants" (as opposed to a variable)
    # SUITS = [:clubs, :diamonds, :hearts, :spades]
    # RANKS = [:A, 2..10, :J, :Q, :K]
    
    # attr_reader :card_count, :shuffle, :deal
  
    def initialize
      @cards_array = []
      52.times{@cards_array.push(Card.new(:Q, :spades))}
    end


    def cards_left
    @cards_array.length
    
    end
    # def @cards_array
    # end




end

class Blackjack

    