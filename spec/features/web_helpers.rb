def sign_in_and_play
  visit '/enter-names'
  fill_in 'Player1', with: 'Laurence'
  fill_in 'Player2', with: 'Ecnerual'
  click_button 'Submit'
end
