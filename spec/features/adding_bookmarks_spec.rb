feature "adding bookmarks" do
  scenario "add bookmark" do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    visit('/bookmarks/new')
    fill_in('url', with: "https://www.pictureofhotdog.com/about")
    click_on("add new bookmark")
    expect(page).to have_content "https://www.pictureofhotdog.com/about"
  end

end
