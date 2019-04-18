feature 'Display hit points' do
  scenario 'View hit points of player two' do
    sign_in_and_play
    expect(page).to have_content "Helen: 100 XP"
  end

  scenario 'View hit points of player one' do
    sign_in_and_play
    expect(page).to have_content "Ayelisha: 100 XP"
  end
end
