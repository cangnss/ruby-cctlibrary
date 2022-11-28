class Student
    attr_accessor :id, :name, :gender, :age

    def initialize(id, name, gender, age)
        @id = id
        @name = name
        @gender = gender
        @age = age
    end

    def display
        puts "Id: #@id"
        puts "Name: #@name"
        puts "Gender: #@gender"
        puts "Age: #@age"
    end
end