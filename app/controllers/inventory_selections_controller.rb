class InventorySelectionsController < ApplicationController
  def new
    @inventory_selection = InventorySelection.new
  end

  def create
    @inventory_selection = InventorySelection.new(inventory_selection_params)
    @inventory_selection.ticket_id = params[:ticket_id]

    respond_to do |format|
      if @inventory_selection.save
        format.html { redirect_to ticket_path(@inventory_selection.ticket_id), notice: 'Item was successfully added.' }
        format.json { render :show, status: :created, location: @inventory_selection }
      else
        format.html { render :new }
        format.json { render json: @inventory_selection.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_selection_params
      params.require(:inventory_selection).permit(:inventory_id, :ticket_id)
    end
end
