require 'pry'
require 'pry-nav'

#Constants
DECK  = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K",
       "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K",
       "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K",
       "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
SCORECARD = {"A" => 11, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6,
             "7" => 7, "8" => 8, "9" => 9, "10" => 10, "J" => 10, "Q" => 10,
             "K" => 10}

#Method to initialize new deck
def new_deck (deck)
  deck = DECK
end

#Method to deal cards to either player
def deal(deck)
  deck.delete_at(deck.sample.to_i)
end

#Method to calculate the player score
def player_score(cards)
  player_score = 0
  a_counter = 0
  cards.length.times do |i|
    player_score = player_score + SCORECARD[cards[i]]
    #count the number of aces
    if cards[i] == "A"
      a_counter = a_counter + 1
    end
  end
  #For as many aces as the player has in their hand, we will subtract 10 for
  #each one until we are equal to or less than 21. If the hands is already
  #21 or under it will leave it as is.
  a_counter.times do |i|
    if player_score > 21
      player_score = player_score - 10
    else
      break
    end
  end
  player_score
end

#method to calculate the dealer score
def dealer_score(cards)
  dealer_score = 0
  cards.length.times do |i|
    dealer_score = dealer_score + SCORECARD[cards[i]]
  end
  dealer_score
end

def dealer_final_score(cards, deck)
  loop do |i|
    if dealer_score(cards) < 17
      cards[cards.length] = deal(deck)
    else
      return dealer_score(cards)
    end
  end
end

def provide_player_score (ply_cards)
  score = player_score(ply_cards).to_s
  puts "Your current cards are #{ply_cards.join(', ')}" +
       ", with a score of " + score + "."
end
def provide_dealer_score (dlr_cards)
  puts "The dealer has a " + dlr_cards[0] + " and a mystery card."
end

def provide_final_score (ply_score, dlr_score)
  puts "your score: #{ply_score}"
  puts "dealer score: #{dlr_score}"
  if ply_score > dlr_score || dlr_score > 21
    puts "You win!"
  elsif dlr_score > ply_score
    puts "The dealer won!"
  else
    puts "it's a tie!"
  end
end

#Set up the initial layout of the game
#Get a new set of cards
deck = new_deck(deck)

#Deal the initial cards to the players
player_cards = []
dealer_cards = []
2.times do |i|
  player_cards[i] = deal(deck)
  dealer_cards[i] = deal(deck)
end

system 'clear'
loop do
  #Evaluate whether the player has busted
  if player_score(player_cards) < 22
    provide_player_score(player_cards)
    provide_dealer_score(dealer_cards)
    puts "Would you like to hit or stay?"
    player_response = gets.chomp
    if player_response == "hit"
      player_cards[player_cards.length] = deal(deck)
    elsif player_response == "stay"
      provide_final_score(player_score(player_cards), dealer_final_score(dealer_cards, deck))
      break
    else
      puts "incorrect response; try again"
    end
  else
    provide_player_score(player_cards)
    puts 'you busted!'
    break
  end
end
