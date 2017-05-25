feature 'Reduce Player 2 HP when attacked' do
  scenario 'see reduction in player 2 HP when attacked' do
    sign_in_and_play
      click_button 'Attack'
    expect(page).to have_content "Michael's HP was reduced by 10"
  end
end
