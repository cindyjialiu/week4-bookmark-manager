require 'pg'

class Link
  def self.show_all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM links")
    result.map { |link| link['url'] }
  end
end
