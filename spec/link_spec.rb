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
end
