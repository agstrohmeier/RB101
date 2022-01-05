VALID_CHOICES = %w(rock paper scissors lizard spock)

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'lizard' && second == 'paper')
end

def display_result(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  else
    'tie'
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def check_winner(player, computer)
  if player > 4
    prompt("Player is the grand winner!")
  elsif computer > 4
    prompt("The computer is the grand champion!")
  end
end

player_wins = 0
computer_wins = 0

loop do
  choice = ''
  loop do
    prompt("Choose one:  #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  winner = display_result(choice, computer_choice)

  if winner == 'player'
    player_wins += 1
    prompt('You won!')
  elsif winner == 'computer'
    computer_wins += 1
    prompt('The computer won!')
  else
    prompt('tie!')
  end

  check_winner(player_wins, computer_wins)
  break if player_wins > 4 || player_wins > 4
end

prompt("Thank you for playing!")
