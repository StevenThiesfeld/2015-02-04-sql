class Student
  def initialize(options)
    @name = options[:name]
    save
  end
  
  #SELECT * FROM questions WHERE student_id = 2;
  
  def questions
    DATABASE.execute("SELECT * FROM questions WHERE student_id = #{@id}")
  
  def self.all
    DATABASE.execute("SELECT * FROM students")  
  end
  
  private
  def save
    DATABASE.execute("INSERT INTO students (name) VALUES (\"#{@name}\")")
    @id = DATABASE.last_insert_row_id
  end
  
end#classend