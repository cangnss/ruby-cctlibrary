require "./load.rb"

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
            load.listStudents
        when 2
            load.listBooks
        when 0
            break
        else
            "Error"
        end
    end
end

