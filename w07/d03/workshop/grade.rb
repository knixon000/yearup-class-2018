# class that accepts parameters for the subjects and scores in those subjects

class Grade
  attr_accessor :subject, :score

  def initialize(subject, score)
    @subject = subject
    @score = score
  end

end


