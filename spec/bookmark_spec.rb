require 'bookmark'

describe Bookmark do
describe '#all' do
  it "return all bookmarks" do
    subject = Bookmark.all
    expect(subject).to include "http://www.makersacademy.com"
    expect(subject).to include "http://askjeeves.com"
    expect(subject).to include "http://twitter.com"
  end
end

end
