class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
    attr_accessor :name, :grade
  def initialize(name,grade, id)
    @id = id
    @name = name
    @grade = grade
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
         id  INTEGER PRiMARY KEY,
         name TEXT
         grade INTEGER
         )
         SQL
    DB[:conn].execute(sql)
  end
  def self.drop_table

  end

  def save
    sql = <<-SQL
    INSERT INTO students (name,grade)
    VALUE (?, ?)
    SQL
    DB[conn].execute(sql,self.name, self.grade)
  end

end
