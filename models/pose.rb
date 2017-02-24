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

  def self.all
    sql = "SELECT * FROM poses"
    return self.map_items(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM poses WHERE id = #{id}"
    pose = SqlRunner.run(sql)
    result = Pose.new(pose.first)
    return result
  end


  #Helper methods for mapping
  def self.map_items(sql)
    poses = SqlRunner.run(sql)
    result = poses.map { |pose| Pose.new( pose ) }
    return result
  end

  def self.map_item(sql)
    result = Pose.map_items(sql)
    return result.first
  end

end
