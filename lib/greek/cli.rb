class Greek::CLI
  
    def call
        puts "loading..."
        Greek::Scraper.scrape_immortals
      welcome
      display_immortals
      menu
      goodbye
    end
    
    def welcome
        puts "Welcome to your lesson of Greek Mythology"
        puts "-----------------------------------------"
    end
    
   def display_immortals
      Immortal.all.each.with_index(1) do |a, b|
        puts "#{b}.   #{a.name}"
      end
      puts "----------------------------------------- e"
    end


    def menu
        input = nil
        while input != "exit"
          puts "Enter the number of the god you want more information on, type 'list' to see list, or 'exit':"
          input = gets.strip.downcase
          
         if input.to_i > 0 && input.to_i < 21
            the_immortal = display_info[input.to_i-1]
            puts "#{the_immortal.name} - #{the_immortal.desc}"
          elsif input == "list"
              display_immortals
          elsif input != "exit"
            puts "Invalid response."
          end
        end
      end
    
    
      def display_info
      Immortal.all.each.with_index(1) do |a, b|
      end
      end
    
    
  
    def goodbye
  puts "Now you know more than you did yesterday, goodbye!"
    end

end
