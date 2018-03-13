require 'link'

describe '.show_all' do
  it 'shows all the links' do
    links = Link.show_all
    expect(links).to include("http://www.google.com")
    expect(links).to include("http://www.facebook.com")
    expect(links).to include("http://makersacademy.com")
    expect(links).to include("http://www.twitter.com")
  end
end
