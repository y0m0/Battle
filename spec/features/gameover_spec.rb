feature 'Game Over' do
  scenario 'one of the player reached 0HP' do
    sign_in_and_play
    19.times { player_1_attacks_player_2 }
    expect(page).to have_content 'Player 2 has lost'
  end
end
