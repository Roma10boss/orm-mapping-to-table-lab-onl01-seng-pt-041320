class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
    attr_accessor :name, :grade, :id
  def initialize(name,grade, id= nil)
    @id = id
    @name = name
    @grade = grade
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLEIF NOT EXISTS students (
         id  INTEGER PRiMARY KEY,
         name TEXT
         grade INTEGER
         )
         SQL
    DB[:conn].execute(sql)
  end
end
