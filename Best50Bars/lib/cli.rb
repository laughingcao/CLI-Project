class CLI
      def call
        gets_bars
        list_bars
        menu
      end

      def gets_bars
        @bars = Scraper.scrape
      end

      def list_bars
        puts "\nHello! These are the winners of the 50 best bars awards of 2020!\n"
        puts
        @bars.each do |bar|
          puts "#{bar.ranking} #{bar.name}"
        end
        puts
      end

    def menu
          input = nil
        while input != "exit"
          puts "Enter the rank number between 1 to 50 get more infomation of the bar selected or type 'list' to see the winners or 'exit'."
          input = gets.strip.downcase
        if input.to_i > 0 && input.to_i < 51 
          bar = @bars[input.to_i - 1] 
          puts bar.name 
          puts bar.location
          puts "https://www.worlds50bestbars.com" + bar.url
        elsif input == "list"
          list_bars
        elsif input == "exit"
          goodbye
        else
          puts "Error! I only understand numbers between 1-50 or 'list' or 'exit'."
        end
      end
    end

      def goodbye
        puts "Thank you! Please support your local bars and drink responsibly!"
      end
end