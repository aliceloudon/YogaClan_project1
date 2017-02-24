require_relative('../db/sql_runner.rb')

class Sequence

  attr_reader :id
  attr_accessor :name, :total_time, :average_effort_level

  def initialize(options)
    @id = options['id']
    @name = options['name']
    @total_time = options['time']
    @average_effort_level = options['effort_level']
  end



end