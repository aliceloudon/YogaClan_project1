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



end
