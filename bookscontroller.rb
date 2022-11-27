

book = Book.new(id,title,author,price)
bks = BooksController.new
bks.saveBook(Book)
bks.listBooks()