def add_diary_entry
  visit('/add_entry')
  fill_in(:body, with: 'Testing')
  click_button('Submit')
end