class PagesController < ApplicationController
  def all
    @tickets = Ticket.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def super_view
    if current_user.role == "Supervisor"
      @tickets = Ticket.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
    else
      redirect_to root_path, alert: "You are not allowed to access this page"
    end
  end
end
