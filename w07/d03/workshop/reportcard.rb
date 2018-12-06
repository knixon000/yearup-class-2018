require './grade'
# inputs the grades for each subject on a student's report card

class Reportcard
attr_accessor :grades

  def initialize
    # a hash where the grades are stored
    @grades = {}
  end

  def addGrade(grade)
    if @grades[grade.subject]
      raise "Sorry, you cannot add or change #{grade.subject} because it was already entered."
    end
    @grades[grade.subject] = grade
  end

  def printCard
    # prints each subject and grade by using a loop
    @grades.each do |subject, grade|
      puts "Subject: #{subject} - #{grade.score}"
    end
  end

  def grades
    @grades
  end

end

