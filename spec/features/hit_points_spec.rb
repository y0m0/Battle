feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Andrew'
    fill_in :player_2_name, with: 'Michael'
    click_button 'Submit'
    expect(page).to have_content 'Michael: 100HP'
  end
end
