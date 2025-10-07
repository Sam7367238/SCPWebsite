class ScpsController < ApplicationController
  before_action :set_scp, only: %i[ show edit update destroy ]
  before_action :authorize_user, only: %i[ index show new create edit update destroy ]

  # GET /scps or /scps.json
  def index
    @scps = Scp.all
  end

  # GET /scps/1 or /scps/1.json
  def show
  end

  # GET /scps/new
  def new
    @scp = Scp.new
  end

  # GET /scps/1/edit
  def edit
  end

  # POST /scps or /scps.json
  def create
    @scp = Scp.new(scp_params)

    respond_to do |format|
      if @scp.save
        format.html { redirect_to @scp, notice: "Scp was successfully created." }
        format.json { render :show, status: :created, location: @scp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scps/1 or /scps/1.json
  def update
    respond_to do |format|
      if @scp.update(scp_params)
        format.html { redirect_to @scp, notice: "Scp was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @scp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scps/1 or /scps/1.json
  def destroy
    @scp.destroy!

    respond_to do |format|
      format.html { redirect_to scps_path, notice: "Scp was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scp
      @scp = Scp.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def scp_params
      params.expect(scp: [ :item_number, :classification ])
    end

    def authorize_user
      authorize! Scp
    end
end
