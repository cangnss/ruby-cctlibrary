require "./load.rb"

class Main
    load = Load.new
    load.loadStudents
    load.loadBooks
    load.listStudents
    load.listBooks
end

