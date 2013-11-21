class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
    @ticket = Ticket.new
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to ticket_index_path
  end

  private

  def ticket_params
    params.require(:ticket).permit(:problem,
            :complaintant_name, :email, :completed)
  end
end
