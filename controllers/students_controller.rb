class StudentsController
    @@students = Load.getStudents()
    def hi
        puts "hi from studentscontroller"
    end

    def listStudentsSorted
        @names = Array.new

        @values = @@students.sort_by! { |s| s.name.downcase }
        
        @values.each do |v|
            puts v.name
        end
    end

end