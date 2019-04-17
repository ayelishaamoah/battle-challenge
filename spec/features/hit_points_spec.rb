feature 'Display hit points' do
  scenario 'Users can see the other players hit points' do
    sign_in_and_play
    expect(page).to have_content "Helen: 100 XP"
  end
end
