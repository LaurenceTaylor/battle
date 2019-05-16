feature 'entering player names' do
  scenario 'names should appear on the screen after being entered' do
    sign_in_and_play
    expect(page).to have_content('Laurence vs. Ecnerual')
  end
end

feature 'entering player names' do
  scenario 'names should appear on the screen after being entered' do
    sign_in_and_play
    expect(page).to have_content('Ecnerual: 120HP')
  end
end

feature 'attacking an opponent' do
  scenario 'gives a confirmation of your attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Laurence attacked Ecnerual!')
  end

  scenario 'should reduce their hitpoints' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Ok.'
    expect(page).to have_content('Ecnerual: 110HP')
    expect(page).not_to have_content('Ecnerual: 120HP')
  end
end
