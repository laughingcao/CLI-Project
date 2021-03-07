class Bar
    attr_accessor :name, :location, :ranking, :url

    def initialize(bar_node, i)
        @name = bar_node.css('h2').text
        @location = bar_node.css('h2 + p').text
        @ranking = i + 1
        @url = bar_node['href']
    end
end