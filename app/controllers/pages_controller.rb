class PagesController < ApplicationController
  def all
    @tickets = Ticket.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def super_view
    @tickets = Ticket.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end
end
