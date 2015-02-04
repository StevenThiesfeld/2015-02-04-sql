class Question
  def initialize(options)
    @student_id = options[:student_id]
    @question_text = options[:question_text]
  end
  
  def save 
    DATABASE.execute("INSERT INTO questions (student_id, question_text) VALUES (#{@student_id}, '#{@question_text}')")
  end
  
  def self.all
    DATABASE.execute("SELECT * FROM questions")  
  end
  
end#classend