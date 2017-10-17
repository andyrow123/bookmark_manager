feature 'Creating links' do
  scenario 'I can create a new link' do
    visit('/links/new')

    fill_in :title, with: 'Test Add Link'
    fill_in :url, with: 'http://example.com/'
    click_button('Add Bookmark')

    expect(current_path).to eq '/links'

    expect(page).to have_content 'Test Add Link'
  end
end