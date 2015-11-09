class LaborEntriesController < ApplicationController
  def new
    @labor_entry = LaborEntry.new
  end

  def edit
    @labor_entry = LaborEntry.find(params[:id])
  end

  def update
    @labor_entry = LaborEntry.find(params[:id])
    @labor_entry.ticket_id = params[:ticket_id]

    respond_to do |format|
      if @labor_entry.update(labor_entry_params)
        format.html { redirect_to ticket_path(@labor_entry.ticket_id), notice: 'Hours were successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket }
      else
        format.html { render :edit }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @labor_entry = LaborEntry.new(labor_entry_params)
    @labor_entry.ticket_id = params[:ticket_id]

    respond_to do |format|
      if @labor_entry.save
        format.html { redirect_to ticket_path(@labor_entry.ticket_id), notice: 'Hours were successfully added.' }
        format.json { render :show, status: :created, location: @labor_entry }
      else
        format.html { render :new }
        format.json { render json: @labor_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @labor_entry = LaborEntry.find(params[:id])
    @ticket = @labor_entry.ticket_id
    @labor_entry.destroy
    respond_to do |format|
      format.html { redirect_to ticket_path(@ticket), notice: 'Hours were successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def labor_entry_params
      params.require(:labor_entry).permit(:user_id, :hours, :ticket_id)
    end
end