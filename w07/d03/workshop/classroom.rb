class Classroom
  attr_accessor :name
  attr_accessor :students

  def initialize(name)
    @name = name
    @students = {}
  end

  def addStudent(student)
    if @students[student.name]
      raise "Sorry, #{student} is already in here."
    else
    puts @students[name] = student
    end
  end

  def roster
    puts @name + " roster:"
    @students.each do |key, value|
      puts "#{value.name}: #{value.age}"
    end
  end

end
