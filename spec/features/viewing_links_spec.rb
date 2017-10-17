feature 'Viewing links' do

  scenario 'I can see existing links on the links page' do
    Link.create(url: 'http://github.com', title: 'GitHub')
    visit '/links'

    expect(page.status_code).to eq 200

    expect(page).to have_content('GitHub')

    # within 'ul#links' do
    # end
  end
end