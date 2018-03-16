feature 'deleting a link' do
  scenario 'the user can delete an existing link' do
    visit('/')
    within '#link-1' do
      click_button 'Delete'
    end

    expect(current_path).to eq '/'
    expect(page).not_to have_content 'Makers Academy'
  end
end
