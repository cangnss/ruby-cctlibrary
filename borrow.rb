class Borrow
    def initialize(id, bookId, studentId)
        @id = id
        @bookId = bookId
        @studentId = studentId
    end

    def display
        puts "Id: #@id"
        puts "Book id: #@bookId"
        puts "Student id: #@studentId"
    end
end

borrow = Borrow.new(1,1000,23423)
borrow.display()