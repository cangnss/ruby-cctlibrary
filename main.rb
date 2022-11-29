require "./load.rb"
require "./controllers/students_controller.rb"

class Main
    load = Load.new
    load.loadStudents
    load.loadBooks
    #load.listStudents
    #load.listBooks
    
    @chosee = 1

    while (@choose != 0)
        puts "Enter a number:"
        puts "1 - Student\n 2 - Book\n 0 - Exit"
        @choose = gets.chomp().to_i
        case @choose
        when 1
            @studentService = StudentsController.new()
            puts "1- List all students\n2-List all students alphabetical order\n3-Search a Book\n4-Borrow a Book\n0-Exit"
            @choose1 = gets.chomp().to_i
            while (@choose1 != 0)
                case @choose1
                when 1
                    load.listStudents
                    break
                when 2
                    @studentService.listStudentsSorted
                    break
                when 3
                    puts "3"
                when 4 
                    puts "4"
                when 0
                    break
                else
                    "Error"
                end
            end
        when 2
            load.listBooks
        when 0
            break
        else
            "Error"
        end
    end
end

