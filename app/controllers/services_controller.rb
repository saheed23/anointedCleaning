class ServicesController < ApplicationController
  def new
  @service = Service.new
  end

def index
    @service = Service.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @service }
    end
    end


  def create 
    @service = Service.new(service_params)
    if @service.save
      flash[:success] = 'Service Updated!'
      redirect_to new_service_path
    else
      render action: :new
end

	def show
     @service = Service.find(params[:id])
     end
 
	def edit
    @service = Services.find(params[:id])
  end


def update
    @service = Service.find(params[:id])
      if @service.update(service_params)
        redirect_to @service
      else
        render 'edit'
      end

private 
    def service_params
     params.require(:service).permit(:title, :image_url, :description)
	end
end
end
end
