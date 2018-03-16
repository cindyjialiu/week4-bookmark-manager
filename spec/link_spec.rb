require 'link'

describe '.show_all' do
  it 'returns all the links and wrapped in links instances' do
    links = Link.show_all

    urls = links.map(&:url)
    expect(urls).to include("http://www.google.com")
    expect(urls).to include("http://makersacademy.com")
    expect(urls).to include("http://www.twitter.com")
  end

  describe '.create' do
    it 'creates a new link' do
      Link.create(url: 'http://www.test.com')

      links = Link.show_all
      urls = links.map(&:url)
      expect(urls).to include 'http://www.test.com'
    end

    it 'does not create a new link if the URL is invalid' do
      Link.create(url: 'not a real link')

      links = Link.show_all
      urls = links.map(&:url)
      expect(urls).not_to include 'not a real link'
    end
  end

  describe '.delete' do
    it 'deletes an existing link' do
      Link.delete(1)

      links = Link.show_all
      urls = links.map(&:url)
      expect(urls).not_to include 'http://www.makersacademy.com'
    end
  end

  describe '.update' do
    it 'updates an existing link' do
      Link.update(1, url: 'http://www.snakersacademy.com', title: 'Snakers Academy')

      links = Link.show_all
      urls = links.map(&:url)
      titles = links.map(&:title)
      expect(urls).not_to include "http://www.makersacademy.com"
      expect(titles).not_to include "Makers Academy"
      expect(urls).to include "http://www.snakersacademy.com"
      expect(titles).to include "Snakers Academy"
    end
  end
end
