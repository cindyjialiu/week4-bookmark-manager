require 'pg'

task :test_database_setup do
  p "Cleaning database..."

  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec("TRUNCATE links;")

  connection.exec("INSERT INTO links VALUES(1, 'http://makersacademy.com', 'Makers Academy');")
  connection.exec("INSERT INTO links VALUES(2, 'http://www.google.com', 'Google');")
  connection.exec("INSERT INTO links VALUES(3, 'http://www.twitter.com', 'Twitter');")
  connection.exec("SELECT setval('links_id_seq'::regclass, 10)")
end

task :setup do
  p "Creating databases..."

  ['bookmark_manager', 'bookmark_manager_test'].each do |database|
    connection = PG.connect
    connection.exec("CREATE DATABASE #{ database };")
    connection = PG.connect(dbname: database)
    connection.exec("CREATE TABLE links(id SERIAL PRIMARY KEY, url VARCHAR(60), title VARCHAR(60));")
  end
end
