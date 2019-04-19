def sign_in_and_play
  visit('/')
  fill_in 'player_one', with: "Ayelisha"
  fill_in 'player_two', with: "Helen"
  click_button 'Submit'
end

def attack_and_next_turn
  19.times {
    click_button 'Attack'
    click_button 'Play again'
  }
end
