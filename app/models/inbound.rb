class Inbound
  attr_accessor :reply, :ticket_id, :completed

  def initialize(response_obj)
    @ticket_id, @reply, @completed =
      ticket_values_from_json(response_obj)
  end

private
  def ticket_values_from_json(response_obj)
    response_obj.scan(/\[(.*?)\]/m).flatten.map do |val|
      val[4..-1]
    end
  end
end
