class InboundsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    inbound = Inbound.new(response)
    Ticket.find_and_update!(inbound)
    render nothing: true
  end
end
