feature 'lose points' do
  scenario 'attack player and reduce their hit points by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play again'
    expect(page).to have_content "Helen: 90 XP"
  end

  scenario 'player 2 attacks player 1 and reduce HP' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play again'
    click_button 'Attack'
    click_button 'Play again'
    expect(page).to have_content "Ayelisha: 90 XP"
  end
end
