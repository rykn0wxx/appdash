class FactPhonesController < ApplicationController
  before_action :set_fact_phone, only: [:show, :update, :destroy]
  before_action :authenticate_user
  skip_before_action :verify_authenticity_token

  # GET /fact_phones
  def index
    @fact_phones = FactPhone.all

    render json: @fact_phones
  end

  # GET /fact_phones/1
  def show
    render json: @fact_phone
  end

  # POST /fact_phones
  def create
    @fact_phone = FactPhone.new(fact_phone_params)

    if @fact_phone.save
      render json: @fact_phone, status: :created, location: @fact_phone
    else
      render json: @fact_phone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fact_phones/1
  def update
    if @fact_phone.update(fact_phone_params)
      render json: @fact_phone
    else
      render json: @fact_phone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fact_phones/1
  def destroy
    @fact_phone.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fact_phone
      @fact_phone = FactPhone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fact_phone_params
      params.require(:fact_phone).permit(:record_date, :language_id, :project_id, :calls_off, :calls_ans, :calls_ans_sl, :calls_abn, :calls_abn_sl, :time_talk, :time_hold, :time_wrap, :queue_ans)
    end
end
