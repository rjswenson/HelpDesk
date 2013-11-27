class Inbound
  attr_accessor :reply, :ticket_id, :completed

  def initialize(response)
    @ticket_id, @reply, @completed =
      ticket_values_from_json(response)
  end

private
  def ticket_values_from_json(response)
    response.body.scan(/\[(.*?)\]/m).flatten.map do |val|
      val[4..-1]
    end
  end
end

