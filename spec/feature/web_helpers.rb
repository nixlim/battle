def sign_in_and_play
  visit '/'
  fill_in 'Player_1_Name', with: 'Igor'
  fill_in 'Player_2_Name', with: 'Rogi'
  click_button 'Submit'
end