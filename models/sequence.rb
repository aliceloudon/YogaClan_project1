require_relative('../db/sql_runner.rb')

class Sequence

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = nil || options['id'].to_i
    @name = options['name']
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

  def poses
    sql = "SELECT p.* FROM poses p
          INNER JOIN joins j ON j.pose_id = p.id
          WHERE j.sequence_id = #{@id}"
    poses = SqlRunner.run(sql)
    # this gives me back an array of hashes
    result = poses.map { |pose| Pose.new(pose)}
    # map each hash to a new pose
    return result
    # get all the poses for this sequence @id
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