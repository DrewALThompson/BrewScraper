class BrewScraper::Scraper
  class << BrewScraper::Scraper
    # #creates a singleton instance that allows you to not have to create a new instance everytime

    def ingredients_index(choice)
      page = 1
      loop do
        html = Nokogiri::HTML(open("https://www.northernbrewer.com/collections/#{choice}?_=pf&page=#{page}"))
        items = html.css('div.productitem')
        break if items.empty?
        # breaks if there is no items on a page
        # works mainly only because the website goes infinite 
        #eg if you go collections/beer-yeast and set the page to 150 page is blank
        items.each { |item| BrewScraper::Ingredients.new_from_scraper(item) }
        page += 1
      end
    end
  end
  # changed from total page/
end

# div.productgrid--items is the outline from which I will iterate
# div.productgrid--items h2
# div.productgrid--items div.price--main
# html.css('div.productgrid--items p')[0].text.split('.')[0]
