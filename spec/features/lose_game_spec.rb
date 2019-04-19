feature 'lose game messge' do
  scenario 'when a players points reach 0 they lose do' do
    sign_in_and_play
    attack_and_next_turn
    expect(page).to have_content "Helen Loses!"
  end
end
