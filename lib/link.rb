require 'pg'
require 'database_connection'

class Link
  def self.show_all
    result = DatabaseConnection.query("SELECT * FROM links")
    result.map { |link| link['url'] }
  end

  def self.create(options)
    DatabaseConnection.query("INSERT INTO links (url) VALUES('#{options[:url]}')")
  end

end
