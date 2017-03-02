require_relative('../db/sql_runner.rb')

class Sequence

  attr_reader :id
  attr_accessor :name, :total_time

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @total_time = 0
  end

  def save
    sql = "INSERT INTO sequences (name) VALUES ('#{@name}') RETURNING *;"
    results = SqlRunner.run(sql).first
    @id = results['id'].to_i
  end

  def self.delete_all
    sql = "DELETE FROM sequences"
    SqlRunner.run(sql)
  end

  def self.all
    sql = "SELECT * FROM sequences"
    return self.map_items(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM sequences WHERE id = #{id}"
    sequence = SqlRunner.run(sql)
    result = Sequence.new(sequence.first)
    return result
  end

  def update
    sql = "UPDATE sequences SET
      name = '#{@name}'
      WHERE id = #{@id}
      ;"
    SqlRunner.run(sql)
  end

  def delete
    sql = "DELETE FROM sequences WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def delete_poses_sequences
    sql = "DELETE FROM poses_sequences WHERE sequence_id = #{@id}"
    SqlRunner.run(sql)
  end

  def poses
    sql = "SELECT p.* FROM poses p
          INNER JOIN poses_sequences ps ON ps.pose_id = p.id
          WHERE ps.sequence_id = #{@id}"
    poses = SqlRunner.run(sql)
    # this gives me back an array of hashes
    result = poses.map { |pose| Pose.new(pose)}
    # map each hash to a new pose
    return result
    # get all the poses for this sequence @id
  end

  def add_time(poses)
    amount = poses.inject(0) {|sum, value| sum + value.time}
    @total_time = amount
  end

  def average_effort
    effort = poses.inject(0) {|sum, value| sum + value.effort_level}
    average_effort = effort/poses.count.to_f
    return average_effort.round(1)
  end

  def format_time()
    seconds = @total_time % 60
    minutes = (@total_time / 60) % 60
    if minutes < 1
      return "#{seconds.to_s} seconds"
    elsif minutes >= 2
      return "#{minutes.to_s} minutes #{seconds.to_s} seconds"
    else 
      return "#{minutes.to_s} minute #{seconds.to_s} seconds"
    end
  end

  def contains?(pose_id)
    for pose in poses()
      return true if pose.id == pose_id
    end
    return false
  end

  #Helper methods for mapping
  def self.map_items(sql)
    sequences = SqlRunner.run(sql)
    result = sequences.map { |sequence| Sequence.new(sequence) }
    return result
  end

  def self.map_item(sql)
    result = Sequence.map_items(sql)
    return result.first
  end

end