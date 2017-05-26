feature 'Players will switch roles' do
  scenario 'Attacking player will then defend' do
    sign_in_and_play
    player_1_attacks_player_2
    expect(page).to have_content 'Player 1: 100HP'
  end
end
