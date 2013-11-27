class InboundsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    request.body.rewind
    response_obj = Postmark::Json.decode(request.body.read)

    inbound = Inbound.new(response_obj)
    Ticket.find_and_update!(inbound)
  end
end
