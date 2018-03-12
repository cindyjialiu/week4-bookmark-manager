require 'link'

describe '.show_all' do
  it 'shows all the links' do
    links = Link.show_all
    expect(links).to include("http://www.google.co.uk/")
    expect(links).to include("http://www.wikipedia.org/")
    expect(links).to include("http://www.vogue.co.uk/")
  end
end
