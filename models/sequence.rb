require_relative('../db/sql_runner.rb')

class Sequence

  attr_reader :id, :pose_id
  attr_accessor :name, :total_time, :average_effort_level

  def initialize(options)
    @id = options['id']
    @name = options['name']
    @total_time = options['total_time'].to_i
    @average_effort_level = options['average_effort_level'].to_i
    @pose_id = options['pose_id'].to_i
  end

  def save
    sql = "INSERT INTO sequences (name, total_time, average_effort_level) VALUES ('#{@name}', #{@total_time}, #{@average_effort_level}) RETURNING *;"
    sequence = SqlRunner.run(sql).first
    @id = sequence['id'].to_i
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
      name = '#{@name}',
      total_time = #{@total_time},
      average_effort_level = #{@average_effort_level}
      WHERE id = #{@id}
      ;"
    SqlRunner.run(sql)
  end

  def delete
    sql = "DELETE FROM sequences WHERE id = #{@id}"
    SqlRunner.run(sql)
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