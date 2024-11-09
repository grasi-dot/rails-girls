class MentorasController < ApplicationController
  before_action :set_mentora, only: [:show, :destroy, :edit, :update]
  
  def index
    @mentoras = Mentora.all
  end

  def show; end

  def create
    @mentora = Mentora.new(mentora_params)
    
    respond_to do |format|
      if @mentora.save
        format.html { redirect_to @mentora }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def new
    @mentora = Mentora.new
  end

  def destroy
    @mentora.destroy!
    respond_to do |format|
      format.html { redirect_to mentoras_path }
    end
  end

  def edit; end

  def update
    
    respond_to do |format|
      if @mentora.update(mentora_params)
        format.html { redirect_to @mentora }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end



  private

  def set_mentora
    @mentora = Mentora.find(params[:id])
  end

  def mentora_params
    params.require(:mentora).permit(:name, :email, :habilidades)
  end
end
