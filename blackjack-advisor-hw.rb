
# Create the solution hashes which will be hashes of hashes.
# The outer key is the player's total and the inner key is the dealer's up card
# The inner-most values are the appropriate actions to take, given that hand
strategy_hash =
{
  "hard"=>
    {
      5 => {2=> "H", 3=> "H", 4=> "H", 5=> "H", 6=> "H", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      6 => {2=> "H", 3=> "H", 4=> "H", 5=> "H", 6=> "H", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      7 => {2=> "H", 3=> "H", 4=> "H", 5=> "H", 6=> "H", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      8 => {2=> "H", 3=> "H", 4=> "H", 5=> "Dh", 6=> "Dh", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      9 => {2=> "Dh", 3=> "Dh", 4=> "Dh", 5=> "Dh", 6=> "Dh", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      10 => {2=> "Dh", 3=> "Dh", 4=> "Dh", 5=> "Dh", 6=> "Dh", 7=> "Dh", 8=> "Dh", 9=> "Dh", 10=> "H", 1=> "H"},
      11 => {2=> "Dh", 3=> "Dh", 4=> "Dh", 5=> "Dh", 6=> "Dh", 7=> "Dh", 8=> "Dh", 9=> "Dh", 10=> "Dh", 1=> "Dh"},
      12 => {2=> "H", 3=> "H", 4=> "S", 5=> "S", 6=> "S", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      13 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      14 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      15 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      16 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      17 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "S", 8=> "S", 9=> "S", 10=> "S", 1=> "S"},
      18 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "S", 8=> "S", 9=> "S", 10=> "S", 1=> "S"},
      19 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "S", 8=> "S", 9=> "S", 10=> "S", 1=> "S"},
      20 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "S", 8=> "S", 9=> "S", 10=> "S", 1=> "S"},
      21 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "S", 8=> "S", 9=> "S", 10=> "S", 1=> "S"}
    },
  "soft" =>
    {
      13 => {2=> "H", 3=> "H", 4=> "Dh", 5=> "Dh", 6=> "Dh", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      14 => {2=> "H", 3=> "H", 4=> "Dh", 5=> "Dh", 6=> "Dh", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      15 => {2=> "H", 3=> "H", 4=> "Dh", 5=> "Dh", 6=> "Dh", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      16 => {2=> "H", 3=> "H", 4=> "Dh", 5=> "Dh", 6=> "Dh", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      17 => {2=> "Dh", 3=> "Dh", 4=> "Dh", 5=> "Dh", 6=> "Dh", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      18 => {2=> "S", 3=> "Ds", 4=> "Ds", 5=> "Ds", 6=> "Ds", 7=> "S", 8=> "S", 9=> "H", 10=> "H", 1=> "S"},
      19 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "Ds", 7=> "S", 8=> "S", 9=> "S", 10=> "S", 1=> "S"},
      20 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "S", 8=> "S", 9=> "S", 10=> "S", 1=> "S"},
      21 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "S", 8=> "S", 9=> "S", 10=> "S", 1=> "S"}
    },
  "pair" =>
    {
      2 => {2=> "P", 3=> "P", 4=> "P", 5=> "P", 6=> "P", 7=> "P", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      3 => {2=> "P", 3=> "P", 4=> "P", 5=> "P", 6=> "P", 7=> "P", 8=> "P", 9=> "H", 10=> "H", 1=> "H"},
      4 => {2=> "H", 3=> "H", 4=> "P", 5=> "P", 6=> "P", 7=> "H", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      5 => {2=> "Dh", 3=> "Dh", 4=> "Dh", 5=> "Dh", 6=> "Dh", 7=> "Dh", 8=> "Dh", 9=> "Dh", 10=> "H", 1=> "H"},
      6 => {2=> "P", 3=> "P", 4=> "P", 5=> "P", 6=> "P", 7=> "P", 8=> "H", 9=> "H", 10=> "H", 1=> "H"},
      7 => {2=> "P", 3=> "P", 4=> "P", 5=> "P", 6=> "P", 7=> "P", 8=> "P", 9=> "H", 10=> "S", 1=> "H"},
      8 => {2=> "P", 3=> "P", 4=> "P", 5=> "P", 6=> "P", 7=> "P", 8=> "P", 9=> "P", 10=> "P", 1=> "P"},
      9 => {2=> "P", 3=> "P", 4=> "P", 5=> "P", 6=> "P", 7=> "S", 8=> "P", 9=> "P", 10=> "S", 1=> "S"},
      10 => {2=> "S", 3=> "S", 4=> "S", 5=> "S", 6=> "S", 7=> "S", 8=> "S", 9=> "S", 10=> "S", 1=> "S"},
      1 => {2=> "P", 3=> "P", 4=> "P", 5=> "P", 6=> "P", 7=> "P", 8=> "P", 9=> "P", 10=> "P", 1=> "P"}
    }
}

# check to determine what type of hand we're dealing with, hard, soft, or pair
def check_hand_type(card_one, card_two)
  hand_type = ""
  if card_one == card_two
    hand_type = "pair"
  elsif card_one == 1 || card_two == 1 || card_one.downcase == "a" || card_two.downcase == "a"
    hand_type = "soft"
  else
    hand_type = "hard"
  end
  return hand_type
end

# checks to see if user input is valid
def valid_card?(input)
  valid_cards = ["j", "q", "k", "a", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
  valid_cards.include?(input)
end

# returns a hash with all the info we might want to know about a player's hand
def player_hand_info_hash(card_one, card_two)
  hand_info = {}
  hand_info["first_card"] = card_one
  hand_info["second_card"] = card_two

  hand_type = ""
  if card_one == card_two
    hand_type = "pair"
  elsif card_one == 1 || card_two == 1 || card_one.downcase == "a" || card_two.downcase == "a"
    hand_type = "soft"
  else
    hand_type = "hard"
  end

  hand_info["hand_type"] = hand_type
  hand_info["int_value_card_one"] = clean_card_input(card_one, hand_type)
  hand_info["int_value_card_two"] = clean_card_input(card_two, hand_type)

  hand_info["hand_total"] = clean_card_input(card_one, hand_type) + clean_card_input(card_two, hand_type)
  return hand_info
end

# takes the user's input and hand_type and returns an output that is an int. if the user didn't pass something valid, 0 will be returned
def clean_card_input(card, hand_type = "hard")
  int_card = 0
  if hand_type == "soft"
    case card.downcase
    when "a"
      int_card = 11
    when "k"
      int_card = 10
    when "q"
      int_card = 10
    when "j"
      int_card = 10
    else
      int_card = card.to_i
    end
  else
    case card.downcase
    when "a"
      int_card = 1
    when "k"
      int_card = 10
    when "q"
      int_card = 10
    when "j"
      int_card = 10
    else
      int_card = card.to_i
    end
  end
  return int_card
end

# takes the user's cards and the dealer card and returns the best next move
def determine_best_move(card_one, card_two, dealer_card, strategy_hash)

  hand_type = check_hand_type(card_one, card_two)

  int_card_one = clean_card_input(card_one, hand_type)
  int_card_two = clean_card_input(card_two, hand_type)
  int_dealer_card = clean_card_input(dealer_card)

  player_hand_total = int_card_one + int_card_two

  best_move = ""

  if int_card_one == 0 || int_card_two == 0 || int_dealer_card == 0
    best_move = "invalid input"
  else
    best_move = strategy_hash[hand_type][player_hand_total][int_dealer_card]
  end

  return best_move
end

# translates the S, H, Dh, and Ds into english
def instruct_player(move, hand_total)
  play_instruction = ""
  if hand_total == 21
    play_instruction = "You won!"
  else
    case move
    when "H"
      play_instruction = "You should hit"
    when "S"
      play_instruction = "You should stand"
    when "Dh"
      play_instruction = "Double if possible, otherwise hit"
    when "Ds"
      play_instruction = "Double if possible, otherwise stand"
    else
      play_instruction = "Unkown"
    end
  end
end
# runs the game to prompt user for their card info and output best next move
puts "Hello, my name is Jarvis, your personal BlackJack assistant."
puts "Please enter the first card in your hand."
puts "For facecards, you may either enter '10' or 'J', 'Q', or 'K'"
valid = false
until valid
  first_player_card = gets.chomp.downcase
  valid = valid_card?(first_player_card)
  puts "That is not a valid input value. Please try again" unless valid
end

puts "Thank you. Please enter the second card in your hand"
valid = false
until valid
  second_player_card = gets.chomp.downcase
  valid = valid_card?(second_player_card)
  puts "That is not a valid input value. Please try again" unless valid
end

puts "Thank you. Please enter the dealer's up-card"
valid = false
until valid
  dealer_card = gets.chomp.downcase
  valid = valid_card?(dealer_card)
  puts "That is not a valid input value. Please try again" unless valid
end

user_hand_info = player_hand_info_hash(first_player_card, second_player_card)

best_move = determine_best_move(first_player_card, second_player_card, dealer_card, strategy_hash)

player_instructions = instruct_player(best_move, user_hand_info["hand_total"])
puts "Great, #{player_instructions}"
