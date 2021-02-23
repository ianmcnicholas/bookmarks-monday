feature "bookmarks page" do

  it "displays bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://askjeeves.com")
    expect(page).to have_content("http://twitter.com")
  end



end
