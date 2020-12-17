feature 'Test infrastructure' do
  scenario 'page should include "hello world"' do
    visit("/")
    expect(page).to have_content "Hello world"
  end
end

  feature 'Adding diary entry' do
    scenario 'User has a form to fill in' do
      visit('/add_entry')
      expect(page).to have_field 'title'
      expect(page).to have_field 'body'
      expect(page).to have_button 'Submit'
    end
  end
