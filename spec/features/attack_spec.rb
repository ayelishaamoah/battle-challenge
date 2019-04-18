feature 'Attack' do
  scenario 'attack player 2 and get confirmation message' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Ayelisha attacked Helen"
  end

  scenario 'attack player 1 and reduce HP' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play again'
    click_button 'Attack'
    click_button 'Play again'
    expect(page).to have_content "Ayelisha: 90 XP"
  end
end
