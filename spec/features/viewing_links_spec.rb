feature 'viewing links' do
  scenario 'the user can see links' do
    visit '/'
    expect(page).to have_content "http://www.google.co.uk/"
    expect(page).to have_content "http://www.wikipedia.org/"
    expect(page).to have_content "http://www.vogue.co.uk/"
  end
end
