require_relative('../db/sql_runner.rb')

class Pose

  attr_reader :id
  attr_accessor :name, :image, :hold_time, :effort_level

  def initialize(options)
    @id = options['id']
    @name = options['name']
    @image = options['image']
    @hold_time = options['hold_time']
    @effort_level = options['effort_level']
  end

  def save
    sql = "INSERT INTO poses (name, image, hold_time, effort_level) VALUES ('#{@name}', '#{@image}', #{@hold_time}, #{@effort_level}) RETURNING *;"
    pose = SqlRunner.run(sql).first
    @id = pose['id'].to_i
  end

  def self.delete_all
    sql = "DELETE FROM poses"
    SqlRunner.run(sql)
  end

end
