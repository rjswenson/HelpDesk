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
    puts "Response: #{response}"
    puts "==============================="
    puts "Response Body: #{response.body()}"
    puts "==============================="
    puts "Response Cookies: #{response.cookies()}"
    puts "==============================="
    puts "Does it Respond to body?: #{response.respond_to?(body)}"
    puts "==============================="
    puts "Response Status: #{response.status}"
    puts "==============================="
    puts "Split the body into array:"
    puts response.body.scan(/\[(.*?)\]/m)
    puts "==============================="

    response.body.scan(/\[(.*?)\]/m).flatten.map do |val|
      val[3..-1]
      puts "THE VALUE OF THIS IS: #{val}"
      puts "==========================="
    end
  end
end

