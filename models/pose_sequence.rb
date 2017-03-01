require_relative('../db/sql_runner.rb')
require_relative('../models/sequence.rb')

class PoseSequence

  attr_reader :id
  attr_accessor :pose_id, :sequence_id

  def initialize(options)
    @id = options['id'].to_i
    @pose_id = options['pose_id'].to_i
    @sequence_id = options['sequence_id'].to_i
  end

  def save
    sql = "INSERT INTO poses_sequences (pose_id, sequence_id) VALUES (#{@pose_id}, #{@sequence_id}) RETURNING *;"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i
  end

  def self.delete_all
    sql = "DELETE FROM poses_sequences"
    SqlRunner.run(sql)
  end

  def self.all
    sql = "SELECT * FROM poses_sequences"
    return self.map_items(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM poses_sequences WHERE id = #{id}"
    results = SqlRunner.run(sql)
    result = PoseSequence.new(results.first)
    return result
  end

  def delete
    sql = "DELETE FROM poses_sequences WHERE id = #{@id}"
    SqlRunner.run(sql)
  end

  def update
    sql = "UPDATE poses_sequences SET
      pose_id = #{@pose_id}
      sequence_id = #{@sequence_id}
      WHERE id = #{@id}
      ;"
    SqlRunner.run(sql)
  end

  def pose
    sql = "SELECT * FROM poses p
          INNER JOIN poses_sequences ps
          ON ps.pose_id = p.id
          WHERE p.id = #{@pose_id}"
    results = SqlRunner.run(sql)
    return Pose.new(results.first)
  end

  def sequence
    sql = "SELECT * FROM sequences s
          INNER JOIN poses_sequences ps
          ON ps.sequence_id = s.id
          WHERE s.id = #{@sequence_id}"
    results = SqlRunner.run(sql)
    return Sequence.new(results.first)
  end

  #Helper methods for mapping
  def self.map_items(sql)
    poses_sequences = SqlRunner.run(sql)
    result = poses_sequences.map { |pose_sequence| PoseSequence.new(pose_sequence) }
    return result
  end

  def self.map_item(sql)
    result = PoseSequence.map_items(sql)
    return result.first
  end

end
