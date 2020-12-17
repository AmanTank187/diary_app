feature 'Display diary entry' do
  scenario 'should display diary enteries"' do
    add_diary_entry
    expect(page).to have_content "Testing"
  end
end