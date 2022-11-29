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

    def searchStudent(word)
        #puts word
        @@students.each do |student|
            @res = student.name.downcase.include?(word.downcase)
            if @res == true
                return student
            else
                return false
            end
        end
    end

end