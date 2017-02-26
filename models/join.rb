require_relative('../db/sql_runner.rb')

class Join

  attr_reader :id
  attr_accessor :pose_id, :sequence_id

  def initialize(options)
    @id = nil || options['id'].to_i
    @pose_id = options['pose_id'].to_i
    @sequence_id = options['sequence_id'].to_i
  end

  def save
    sql = "INSERT INTO joins (pose_id, sequence_id) VALUES (#{@pose_id}, #{@sequence_id}) RETURNING *;"
    result = SqlRunner.run(sql).first
    @id = result['id'].to_i
  end

  def self.delete_all
    sql = "DELETE FROM joins"
    SqlRunner.run(sql)
  end

  def self.all
    sql = "SELECT * FROM joins"
    return self.map_items(sql)
  end

  #Helper methods for mapping
  def self.map_items(sql)
    joins = SqlRunner.run(sql)
    result = joins.map { |join| Join.new(join) }
    return result
  end

  def self.map_item(sql)
    result = Join.map_items(sql)
    return result.first
  end

end
