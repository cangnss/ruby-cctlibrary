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

books = Array.new
arr = Array.new

f = File.readlines("books.txt", chomp: true)

f.each do |item|
    arr = item.split(",")
    book = Book.new(arr[0].to_i, arr[1], arr[2], arr[3].to_f)
    books.push(book)
end

books.each do |book|
    puts book.display
end