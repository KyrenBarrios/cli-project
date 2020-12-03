class Greek::Scraper
  
    def self.scrape
      @doc ||= Nokogiri::HTML(open("https://rickriordan.com/extra/meet-the-greek-gods/").css('div.q-and-a')
    end
    
    def self.scrape_immortals
        self.scrape.each do |god|
          name = god.search("div.question").text.strip
          info = god.search("div.answer").text
          Immortal.new(name, info)
        end
      end
  end
  