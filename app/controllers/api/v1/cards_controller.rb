class Api::V1::CardsController < ApplicationController
  before_action :set_api_v1_card, only: [:show, :edit, :update, :destroy]

  # GET /api/v1/cards
  # GET /api/v1/cards.json
  def index
    conditions = Hash.new
    unless params[:limit].blank?
      limit = params[:limit]
    end
    @api_v1_cards = Card.where(conditions).limit(limit)
  end

  # GET /api/v1/cards/1
  # GET /api/v1/cards/1.json
  def show
    respond_to do |format|
      format.html { render json: @api_v1_card }
      format.json { render json: @api_v1_card }
    end
  end

  # GET /api/v1/cards/new
  def new
    @api_v1_card = Card.new
  end

  # GET /api/v1/cards/1/edit
  def edit
  end

  # POST /api/v1/cards
  # POST /api/v1/cards.json
  def create
    @api_v1_card = Card.new(api_v1_card_params)
    respond_to do |format|
      if @api_v1_card.save
        format.html { render json: @api_v1_card, status: :created }
        format.json { render json: @api_v1_card, status: :created }
      else
        format.html { render json: @api_v1_card.errors, status: :unprocessable_entity }
        format.json { render json: @api_v1_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/cards/1
  # PATCH/PUT /api/v1/cards/1.json
  def update
    respond_to do |format|
      if @api_v1_card.update(api_v1_card_params)
        format.html { render :show, status: :ok, location: @api_v1_card }
        format.json { render :show, status: :ok, location: @api_v1_card }
      else
        format.html { render json: @api_v1_card.errors, status: :unprocessable_entity }
        format.json { render json: @api_v1_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/cards/1
  # DELETE /api/v1/cards/1.json
  def destroy
    @api_v1_card.destroy
    respond_to do |format|
      format.html { head :no_content }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_card
      @api_v1_card = Card.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_v1_card_params
      params.fetch(:card, Hash.new).permit(:name, :number, :expired_month, :expired_year, :security_code, :provider, :interest_rate, :category, :image)
    end
end
