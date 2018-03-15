feature 'adding a new link' do
  scenario 'the user can add a new link' do
    visit('/add-a-new-link')
    fill_in('url', with: 'http://www.test.com')
    click_button('Submit')
    expect(page).to have_content "http://www.test.com"
  end

  scenario 'the link must be a valid URL' do
    visit('/add-a-new-link')
    fill_in('url', with: 'not a real link')
    click_button('Submit')
    expect(page).not_to have_content "not a real link"
    expect(page).to have_content "You must submit a valid URL."
  end
end
