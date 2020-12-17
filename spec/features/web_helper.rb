def add_diary_entry
  visit('/add_entry')
  fill_in(:title, with: 'Title test')
  fill_in(:body, with: 'Body test')
  click_button('Submit')
end