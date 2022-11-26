class BooksController
    books = Array.new

    def saveBook(book)
        self.books.push(book)
    end

    def listBooks()
        books.each do |b|
            puts b.display()
        end
    end
end


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

puts "Enter a book id:"
id = gets.chomp().to_i
puts "Enter a book title"
title = gets.chomp()
puts "Enter a book author"
author = gets.chomp()
puts "Enter a price"
price = gets.chomp().to_f

book = Book.new(id,title,author,price)
bks = BooksController.new
bks.saveBook(Book)
bks.listBooks()