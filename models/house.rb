require('pry-byebug')
require_relative('../db/sql_runner')

class House

  attr_reader :id, :name, :logo

  def initialize(options)  
    @id = options['id'].to_i
    @name = options['name']
    @logo = options['logo']
  end

  def save()
    sql = "INSERT INTO houses ( name, logo ) VALUES ('#{ @name }','#{ @logo }') 
      RETURNING *;"
    house = SqlRunner.run(sql)
    @id = house.first()['id'].to_i
  end

  
  def self.delete_all()
    sql = "DELETE FROM houses;"
    houses = SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    houses = SqlRunner.run(sql)
    result = houses.map { |house| House.new(house) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id=#{id};"
    house = SqlRunner.run(sql)
    result = House.new(house.first)
    return result
  end

# binding.pry
# nil


end
