class Inbound
  attr_accessor :reply, :ticket_id, :completed

  def initialize(response_obj)
    @ticket_id, @reply, @completed =
      ticket_values_from_json(response_obj)
  end

private
  def ticket_values_from_json(response_obj)
    response_obj = response_obj["TextBody"]
    puts "Response Object now is:"
    puts response_obj
    response_obj.scan(/\[(.*?)\]/m).map do |val|
      puts "Value is first: #{val}"
      val[3..-1]
      puts "Now it IS: #{val}"
    end
  end
end

