class QuoteListsController < ApplicationController
  before_action :set_quote_list, only: %i[ show edit update destroy ]

  # GET /quote_lists or /quote_lists.json
  def index
    @quote_lists = QuoteList.all
  end

  # GET /quote_lists/1 or /quote_lists/1.json
  def show
  end

  # GET /quote_lists/new
  def new
    @quote_list = QuoteList.new
  end

  # GET /quote_lists/1/edit
  def edit
  end

  # POST /quote_lists or /quote_lists.json
  def create
    @quote_list = QuoteList.new(quote_list_params)

    respond_to do |format|
      if @quote_list.save
        format.html { redirect_to quote_list_url(@quote_list), notice: "Quote list was successfully created." }
        format.json { render :show, status: :created, location: @quote_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quote_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quote_lists/1 or /quote_lists/1.json
  def update
    respond_to do |format|
      if @quote_list.update(quote_list_params)
        format.html { redirect_to quote_list_url(@quote_list), notice: "Quote list was successfully updated." }
        format.json { render :show, status: :ok, location: @quote_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quote_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quote_lists/1 or /quote_lists/1.json
  def destroy
    @quote_list.destroy

    respond_to do |format|
      format.html { redirect_to quote_lists_url, notice: "Quote list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote_list
      @quote_list = QuoteList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quote_list_params
      params.require(:quote_list).permit(:quote_id, :philosopher_id, :category_id)
    end
end
