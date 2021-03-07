class Scraper
    
    def self.scrape
        page = Nokogiri::HTML(open("https://www.worlds50bestbars.com/list/1-50"))
        bar_nodes = page.css('[data-list="1-50"] a.item.contenthyperlink_link')
        bars = []
        bar_nodes.each_with_index do |bar_node, i|
            bars << Bar.new(bar_node, i)
        end
        bars
    end
end