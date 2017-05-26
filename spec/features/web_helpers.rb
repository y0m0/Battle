def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Player 1'
  fill_in :player_2_name, with: 'Player 2'
  click_button 'Submit'
end

def player_1_attacks_player_2
  click_button 'Attack'
  click_button 'OK'
end
