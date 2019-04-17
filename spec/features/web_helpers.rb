def sign_in_and_play
  visit('/')
  fill_in 'player_one', with: "Ayelisha"
  fill_in 'player_two', with: "Helen"
  click_button 'Submit'
end
