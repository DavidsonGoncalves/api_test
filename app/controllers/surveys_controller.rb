class SurveysController < ApplicationController
  before_action :set_survey, only: %i[ show update destroy ]

  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = Survey.all
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      @message= 'Survey was successfully sent.'
    else
      @message= 'Survey error.'
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    if @survey.update(survey_params)
      render :show, status: :ok, location: @survey
    else
      render json: @survey.errors, status: :unprocessable_entity
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey.destroy!
  end

  # GET /surveys/new
  # GET /surveys/new.json
  def new
    @ticket = Ticket.find_by(uuid: params[:uuid])

    if Survey.exists?(ticket_id: @ticket.id)
      @survey_submitted = true
    else
      @survey = Survey.new(ticket: @ticket, rate: params[:rate])
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def survey_params
      params.require(:survey).permit(:observation, :rate, :ticket_id)
    end
end
