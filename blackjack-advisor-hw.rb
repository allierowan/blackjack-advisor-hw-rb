
# Create the solution hashes which will be hashes of hashes.
# The outer key is the player's total and the inner key is the dealer's up card
# The inner-most values are the appropriate actions to take, given that hand
strategy_hash = {"hard"=>
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
  elsif card_one == 1 || card_two == 1
    hand_type = "soft"
  else
    hand_type = "hard"
  end
  return hand_type
end

# takes the user's input and returns an output that is an int. if the user didn't pass something valid, 0 will be returned
def clean_card_input(card)
  int_card = 0
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
  return int_card
end

# takes the user's cards and the dealer card and returns the best next move
def determine_best_move(card_one, card_two, dealer_card)

  int_card_one = clean_card_input(card_one)
  int_card_two = clean_card_input(card_two)
  int_dealer_card = clean_card_input(dealer_card)
  player_hand_total = int_card_one + int_card_two

  hand_type = check_hand_type(int_card_one, int_card_two)
  best_move = ""

  if int_card_one == 0 || int_card_two == 0 || int_dealer_card == 0
    best_move = "invalid input"
  else
    best_move = strategy_hash[hand_type][player_hand_total][dealer_card]
  end
  return best_move
end

#puts determine_best_move("A", "7", "K")
