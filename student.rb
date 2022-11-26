class Student
    def initialize(id, name, gender, age)
        @id = id
        @name = name
        @gender = gender
        @age = age
    end
    def hello()
        puts "hello"
    end

    def display
        puts "Id: #@id"
        puts "Name: #@name"
        puts "Gender: #@gender"
        puts "Age: #@age"
    end
end

students = Array.new

f = File.readlines("students.txt", chomp: true)

arr = Array.new

f.each do |item|
    arr = item.split(",")
    student = Student.new(arr[0].to_i, arr[1], arr[2], arr[3].to_i)
    students.push(student)
end

students.each do |student|
    puts student.display
end