class TestDatabasesController < ApplicationController
  before_action :set_test_database, only: %i[ show update destroy ]

  # GET /test_databases
  # GET /test_databases.json
  def index
    @test_databases = TestDatabase.all
  end

  # GET /test_databases/1
  # GET /test_databases/1.json
  def show
  end

  # POST /test_databases
  # POST /test_databases.json
  def create
    @test_database = TestDatabase.new(test_database_params)

    if @test_database.save
      render :show, status: :created, location: @test_database
    else
      render json: @test_database.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /test_databases/1
  # PATCH/PUT /test_databases/1.json
  def update
    if @test_database.update(test_database_params)
      render :show, status: :ok, location: @test_database
    else
      render json: @test_database.errors, status: :unprocessable_entity
    end
  end

  # DELETE /test_databases/1
  # DELETE /test_databases/1.json
  def destroy
    @test_database.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_database
      @test_database = TestDatabase.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def test_database_params
      params.expect(test_database: [ :test ])
    end
end
