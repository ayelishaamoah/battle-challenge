feature 'Attack' do
  scenario 'attack player 2 and get confirmation message' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "You have attacked Helen"
  end
end
