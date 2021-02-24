require 'bookmark'

describe Bookmark do
describe '#all' do
  it "return all bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

   # Add the test data
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://askjeeves.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://twitter.com');")

    subject = Bookmark.all
    expect(subject).to include "http://www.makersacademy.com"
    expect(subject).to include "http://askjeeves.com"
    expect(subject).to include "http://twitter.com"
  end
end

end
