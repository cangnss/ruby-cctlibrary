class Book
    def initialize(id, title, author, price)
        @id = id
        @title = title
        @author = author
        @price = price
    end

    def display
        puts "Book id: #@id"
        puts "Title: #@title"
        puts "Author: #@author"
        puts "Price: #@price"
    end
end