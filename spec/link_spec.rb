require 'link'

describe '.show_all' do
  it 'shows all the links' do
    links = Link.show_all
    expect(links).to include("http://www.google.com")
    expect(links).to include("http://makersacademy.com")
    expect(links).to include("http://www.twitter.com")
  end

  describe '.create' do
    it 'creates a new link' do
      Link.create(url: 'http://www.test.com')
      expect(Link.show_all).to include 'http://www.test.com'
    end
  end
end
