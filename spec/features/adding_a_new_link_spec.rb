feature 'adding a new link' do
  scenario 'the user can add a new link' do
    visit('/add-a-new-link')
    fill_in('url', with: 'http://www.test.com')
    click_button('Submit')
    expect(page).to have_content "http://www.test.com"
  end
end
