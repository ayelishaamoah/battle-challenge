feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Testing form submission' do
  scenario 'Users can enter names and view submission' do
    visit('/')
    fill_in 'Name', with: "Sarah"
    click_button 'Submit'
    expect(page).to have_content "Sarah"
  end
end
