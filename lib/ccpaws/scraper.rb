class Ccpaws::Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    list = doc.css(".groupCard")
    list.each do |card|
      nane = card.css("h3").text
      binding.pry
    end
    student_index = []

  end

  def self.scrape_profile_page(profile_url)
    html = open(profile_url)
    doc = Nokogiri::HTML(html)
    desc = doc.css(".group-description .chunk p")
    profile_hash = {}

  end
end
