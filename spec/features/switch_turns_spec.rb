feature 'switching turns' do
  scenario 'you can see the current players turn' do
    sign_in_and_play
    expect(page).to have_content "Ayelisha's turn"
  end

  scenario 'after an attack the player switches' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Play again'
    expect(page).to have_content "Helen's turn"
  end
end
