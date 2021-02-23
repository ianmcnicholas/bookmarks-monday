require 'pg'

class Bookmark

def self.all
  connection = PG.connect :dbname => 'bookmark_manager'
  conn = connection.exec('SELECT * FROM bookmarks')
  conn.map do |item|
    item['url']
  end
  # conn.each do |item|
  #   item.each do |key, value|
  #     return value
  #   end
  # end
  # conn.each do |key, value|
  #    return value
  # end
end

end
