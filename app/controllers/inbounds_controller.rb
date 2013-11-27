class InboundsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    puts "Welcome to the CREATE method"
    puts "Lets parse that json"
    response = JSON.parse(response)
    puts "Here, have a response object body:"
    puts response.body.read
    puts "==================================="
    inbound = Inbound.new(response)
    Ticket.find_and_update!(inbound)
    render nothing: true
  end
end
