class BrewScraper::Ingredients
  attr_accessor :name, :price, :link, :description

  @@all = []

  def self.new_from_scraper(iterated_item)
    new(
      iterated_item.css('h2 a').text.strip,
      iterated_item.css('div.price--main').text.strip.gsub(/\s+/," "),
      iterated_item.css('p').text,
      'https://www.northernbrewer.com' + iterated_item.css('a').attribute('href').value
    )
  end

  def initialize(name = nil, price = nil, description = nil, link = nil)
    @name = name
    @price = price
    @description = description
    @link = link
    @@all << self
  end

  def self.all
    @@all
  end

  def self.pull_ingredient(ingredient_index)
    all[ingredient_index - 1]
  end
  
  def self.clear
    @@all.clear
  end
end

# f for scrapped independent classes for ingredients because it was giving me a major headache trying to rationalize it out in collaboration with the scraper
## div.productgrid--items is the outline from which I will iterate
# #div.productgrid--items h2
# #div.productgrid--items div.price--main
# #html.css('div.productgrid--items p')[0].text.split('.')[0]
