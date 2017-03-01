require_relative('../db/sql_runner.rb')

class Pose

  attr_reader :id
  attr_accessor :name, :image, :time, :effort_level

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @image = options['image']
    @time = options['time'].to_i
    @effort_level = options['effort_level'].to_i
  end

  def save
    sql = "INSERT INTO poses (name, image, time, effort_level) VALUES ('#{@name}', '#{@image}', #{@time}, #{@effort_level}) RETURNING *;"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i
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
    results = SqlRunner.run(sql)
    result = Pose.new(results.first)
    return result
  end

  def update
    sql = "UPDATE poses SET
      name = '#{@name}',
      image = '#{@image}',
      time = #{@time},
      effort_level = #{@effort_level}
      WHERE id = #{@id}
      ;"
    SqlRunner.run(sql)
  end

  def delete
    sql = "DELETE FROM poses WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def format_time
    seconds = @time % 60
    minutes = (@time / 60) % 60
    if minutes < 1
      return "#{seconds.to_s} seconds"
    elsif minutes >= 2
      return "#{minutes.to_s} minutes #{seconds.to_s} seconds"
    else 
      return "#{minutes.to_s} minute #{seconds.to_s} seconds"
    end
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
