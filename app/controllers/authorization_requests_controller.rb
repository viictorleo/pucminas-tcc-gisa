class AuthorizationRequestsController < ApplicationController
  before_action :set_authorization_request, only: %i[ show edit update destroy ]
  before_action :authorization_pundit

  # GET /authorization_requests or /authorization_requests.json
  def index
    @authorization_requests = AuthorizationRequest.all.order('updated_at desc')
  end

  # GET /authorization_requests/1 or /authorization_requests/1.json
  def show
  end

  # GET /authorization_requests/new
  def new
    @authorization_request = AuthorizationRequest.new
  end

  # GET /authorization_requests/1/edit
  def edit
  end

  # POST /authorization_requests or /authorization_requests.json
  def create
    paciente = HealthWallet.find_by(numero: authorization_request_params[:carteirinha])
    status = if authorization_request_params[:procedimento] == 'Exame - PET/ CT'
                'Em análise'
             else
               'Autorizado'
             end
    # authorization_request_params
    @authorization_request = AuthorizationRequest.new(authorization_request_params.merge!(paciente: paciente.paciente, status: status))
    @authorization_request.save

    respond_to do |format|
      
      format.html { redirect_to authorization_requests_path, notice: "Solicitação de autorização realizada com sucesso." }
      format.json { head :no_content }

    end
  end

  # PATCH/PUT /authorization_requests/1 or /authorization_requests/1.json
  def update
    respond_to do |format|
      if @authorization_request.update(authorization_request_params)
        format.html { redirect_to authorization_request_url(@authorization_request), notice: "Authorization request was successfully updated." }
        format.json { render :show, status: :ok, location: @authorization_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @authorization_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorization_requests/1 or /authorization_requests/1.json
  def destroy
    @authorization_request.destroy

    respond_to do |format|
      format.html { redirect_to authorization_requests_url, notice: "Authorization request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorization_request
      @authorization_request = AuthorizationRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authorization_request_params
      params.require(:authorization_request).permit(:carteirinha, :paciente, :procedimento, :status)
    end

    def authorization_pundit
      authorize :authorization_requests
    end
end
