feature 'Test infrastructure' do
  scenario 'page should include "hello world"' do
    visit("/")
    expect(page).to have_content "Hello world"
  end
end
