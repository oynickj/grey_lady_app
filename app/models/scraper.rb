class Scraper
  # attr_accessible :title, :body

  def initialize(url)
    @url = url
  end

  def get_hrefs
    @hrefs = []
    response = HTTParty.get(@url)
    doc = Nokogiri::HTML(response)
    doc.css('a').each do |link|
      @hrefs << link.get_attribute('href')
    end
    @hrefs
  end

  def get_images
    @images = []
    response = HTTParty.get(@url)
    doc = Nokogiri::HTML(response)
    doc.css('img').each do |link|
      @images << link.get_attribute('src')
    end
    @images
  end

end
