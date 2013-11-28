class InboundsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    request.body.rewind
    response_obj = Postmark::Json.decode(request.body.read)

    Ticket.find_and_update!(Inbound.new(response_obj))
    render nothing: true
  end
end
