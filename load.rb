require "./models/student.rb"
require "./models/book.rb"

class Load
    @@students = Array.new()
    @@books = Array.new() 

    def loadStudents
        f = File.readlines("students.txt", chomp: true)

        @arr = Array.new()

        f.each do |item|
            @arr = item.split(",")
            @student = Student.new(@arr[0].to_i, @arr[1], @arr[2], @arr[3].to_i)
            @@students.push(@student)
        end
    end
    
    def loadBooks
        f = File.readlines("books.txt", chomp: true)

        @arr = Array.new

        f.each do |item|
            @arr = item.split(",")
            @book = Book.new(@arr[0].to_i, @arr[1], @arr[2], @arr[3].to_f)
            @@books.push(@book)
        end
    end

    def listStudents
            @@students.each do |student|
                puts student.display
            end
    end

    def listBooks
        @@books.each do |book|
            puts book.display
        end
    end
    
    def loadBorrows
    end

    def self.getStudents
        return @@students
    end
end