class Inbound
  attr_accessor :reply, :ticket_id, :completed

  def initialize(response)
    @ticket_id, @reply, @completed =
      ticket_values_from_json(response)
  end

private
  def ticket_values_from_json(response)
    puts "AT LEAST I MADE IT INSIDE!!!!!!"
    puts "==============================="
    response.body.scan(/\[(.*?)\]/m).flatten.map do |val|
      val[3..-1]
      puts "THE VALUE OF THIS IS: #{val}"
      puts "==========================="
    end
  end
end

