feature 'Display hit points' do
  scenario 'Users can see the other players hit points' do
    visit('/')
    fill_in 'player_one', with: "Ayelisha"
    fill_in 'player_two', with: "Helen"
    click_button 'Submit'
    expect(page).to have_content "Helen: 100 XP"
  end
end
