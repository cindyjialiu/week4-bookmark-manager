feature 'updating an existing link' do
  scenario 'the user can update an existing link' do
    visit('/update-a-link/1')

    fill_in('url', with: "http://www.updatedacademy.com")
    fill_in('title', with: "Updated Academy")
    click_button('Submit')

    expect(current_path).to eq '/'
    expect(page).not_to have_content 'Makers Academy'
    expect(page).to have_content 'Updated Academy'
  end
end
