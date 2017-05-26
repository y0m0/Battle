feature 'Attacking player 2' do
  scenario 'Attack player 2'do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Player 2: 100HP'
    expect(page).to have_content 'Player 2: 90HP'
  end
end
