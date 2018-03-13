feature 'viewing links' do
  scenario 'the user can see links' do
    visit('/')

    expect(page).to have_content "http://makersacademy.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.twitter.com"
  end
end
