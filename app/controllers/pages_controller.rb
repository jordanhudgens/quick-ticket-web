class PagesController < ApplicationController
  def all
    @tickets = Ticket.paginate(page: params[:page], per_page: 10)
  end
end
