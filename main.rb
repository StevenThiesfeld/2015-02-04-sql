require 'pry'

require 'sqlite3'
#all caps = constant, variables that can't be changed accidentally
DATABASE = SQLite3::Database.new("test_database.db")
#use for new OR existing databases
DATABASE.results_as_hash = true
 # DATABASE.execute("DROP TABLE students")
 #use for new databases ONLY
 # DATABASE.execute("CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT)")
#DATABASE.execute("CREATE TABLE questions (id INTEGER PRIMARY KEY, student_id INTEGER, question_text TEXT)")
 

require_relative "student.rb"
require_relative "question.rb"
binding.pry
