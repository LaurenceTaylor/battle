feature 'checking test infrastructure' do
  scenario "should confirm everything's working on the homepage" do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end

feature 'entering player names' do
  scenario 'names should appear on the screen after being entered' do
    visit '/enter-names'
    fill_in 'Player1', with: 'Laurence'
    fill_in 'Player2', with: 'Ecnerual'
    click_button 'Submit'
    expect(page).to have_content('Laurence vs. Ecnerual')
  end
end
