class EmployesController < ApplicationController
  before_action :set_employe, only: [:show, :edit, :update, :destroy]

  # GET /employes
  # GET /employes.json
  def index
    @employes = Employe.all
  end

  # GET /employes/1
  # GET /employes/1.json
  def show

  end

  # GET /employes/new
  def new
    @employe = Employe.new
      respond_to do |format|
        #format.js {}
      end
  end

  # GET /employes/1/edit
  def edit
    @employe = Employe.find(params[:id])
  end

  # POST /employes
  # POST /employes.json
  def create
     @employe = Employe.new(employe_params)
     @employe.save
  end

  # PATCH/PUT /employes/1
  # PATCH/PUT /employes/1.json
  def update
    @employe.update(employe_params)
    
  end

  # DELETE /employes/1
  # DELETE /employes/1.json
  def destroy
    #@employe = Employe.find(params[:id])
    @employe_id = @employe.id
    @employe.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employe
      @employe = Employe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employe_params
      params.require(:employe).permit(:name, :email, :age)
    end
end
