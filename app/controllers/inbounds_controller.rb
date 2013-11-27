class InboundsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    Ticket.find_and_update! Inbound.new(response)
    render nothing: true
  end
end
