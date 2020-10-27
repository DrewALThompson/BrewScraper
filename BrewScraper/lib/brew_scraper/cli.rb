class BrewScraper::CLI
  class << BrewScraper::CLI
    def intro
      puts 'Hello, welcome to Brew Scraper'
      puts 'What ingredients would you like information on?'
      start
    end

    def start
      puts '(hops/beer-yeast/malt-extract/grains)'
      puts ''
      choice = gets.strip.downcase
      choose_ingredient(choice)
      size = BrewScraper::Ingredients.all.size
      puts ''
      puts "There are #{size} items on this list"
      puts 'Would you like a complete list of ingredients with price'
      puts 'or would you like details and a small blurb on a specific item?'
      choose_view
    end

    def choose_ingredient(choice)
      valid_choice = %w[hops beer-yeast malt-extract grains]
      if valid_choice.include?(choice)
        BrewScraper::Scraper.ingredients_index(choice)
      else
        puts 'Please Choose Again'
        start
      end
    end

    def choose_view
      puts '(list/item/exit)'
      view = gets.strip.downcase
      valid_viewing = %w[list item]
      if view == 'item'
        finder
      elsif view == 'list'
        print_all
      elsif view == 'exit'
        puts "Thank you for using Brew Scraper"
        puts "Good luck on your brewing adventures"
      else
        puts 'That is an invalid choice. Please try again'
        choose_view
      end
    end

    def finder
      puts 'Which ingredient would you like to search up?'
      puts 'Enter the number associated with the item'
      puts ''
      number = gets.strip.to_i
      if number > BrewScraper::Ingredients.all.size || number < 0
        puts 'Invalid number please choose again'
        finder
      else
        display = BrewScraper::Ingredients.pull_ingredient(number)
      end
      
      puts ''
      puts "-----#{display.name}"
      puts "-----#{display.price}"
      puts "----------------------------------------"
      puts "#{display.description}"
      puts "----------------------------------------"
      puts "----- more information can be found at"
      puts "#{display.link}"
      puts ''
      restart
    end

    def print_all
      position = 1
      BrewScraper::Ingredients.all.each do |item|
        puts "#{position}: #{item.name}    -     #{item.price}"
        position += 1
      end
      restart
    end

    def restart
      puts 'Would you like to look up another list, an item, or exit?'
      puts '(list/item/exit)'
      lio = gets.strip.downcase
      if lio == 'list'
        BrewScraper::Ingredients.clear
        start
      elsif lio == 'item'
        finder
      elsif lio == 'exit'
        puts 'Thank you for using Brew Scraper'
        puts 'Good luck in your brewing adventures'
      else
        puts 'Invalid input please enter a valid choice'
        restart
      end
    end
  end
end
