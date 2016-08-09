require_relative('../db/sql_runner')

class Shoos

  attr_reader(:first_name, :last_name, :address, :size, :quantity, :id)

  def initialize(option)
    @first_name = option['first_name']
    @last_name = option['last_name']
    @address = option['address']
    @size = option['size'].to_i
    @quantity = option['quantity'].to_i
    @id = option['id']
  end

  def pretty_name
    return @first_name.concat" #{@last_name}"
  end

  def cost
    return "£#{@quantity * 20}"
  end

  def save
    sql = "INSERT INTO shoos (
            first_name,
            last_name,
            address,
            size,
            quantity) VALUES (
            '#{@first_name}',
            '#{@last_name}',
            '#{@address}',
            #{@size},
            #{@quantity}) RETURNING *;"
    shoos = SqlRunner.run(sql).first
    @id = shoos['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM shoos;"
    shoos = SqlRunner.run(sql)
    result = shoos.map {|shoo| Shoos.new(shoo)}
    return result
  end
end