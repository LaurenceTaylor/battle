feature 'entering player names' do
  scenario 'names should appear on the screen after being entered' do
    visit '/enter-names'
    fill_in 'Player1', with: 'Laurence'
    fill_in 'Player2', with: 'Ecnerual'
    click_button 'Submit'
    expect(page).to have_content('Ecnerual HP: 120')
  end
end
