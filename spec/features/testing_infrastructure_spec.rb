feature 'checking test infrastructure' do
  scenario "should confirm everything's working on the homepage" do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end
