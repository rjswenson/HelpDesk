class TicketsController < ApplicationController

  def index
    @tickets = Ticket.order("created_at DESC").to_a
    @ticket = Ticket.new
  end

  # def show
  #   @ticket = Ticket.find(params[:id])
  # end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    puts "@ticket.inspect"
    if @ticket.save
      UserMailer.complaint_to_agent(@ticket).deliver
      flash[:success] = "Ticket Created! You'll receive and email shortly."
      redirect_to root_path
    else
      flash[:alert] = "Ticket not saved."
      redirect_to root_path
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to root_path
  end

  private

  def ticket_params
    params.require(:ticket).permit(:problem,
            :complainant_name, :email, :completed)
  end
end
