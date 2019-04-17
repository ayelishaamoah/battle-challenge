feature 'Testing form submission' do
  scenario 'Users can enter names and view submission' do
    visit('/')
    fill_in 'player_one', with: "Ayelisha"
    fill_in 'player_two', with: "Helen"
    click_button 'Submit'
    expect(page).to have_content "Ayelisha vs Helen"
  end
end
