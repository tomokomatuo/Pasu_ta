class StylistsController < ApplicationController
  before_action :set_stylist, only: [:edit, :show, :update]
  
  def index
    @q = Stylist.ransack(params[:q])
    @stylists = @q.result(distinct: true)
  end
  
  def new
    @stylist = Stylist.new
  end
  
  def create
    @stylist = Stylist.new(stylist_params)
    @stylist.id = current_user.id
    if @stylist.save
      redirect_to stylist_path(@stylist)
    else
      render :new
    end
  end
  
  def show
  end
  
  def edit
  end

  private
  
  def stylist_params
    params.require(:stylist).permit(:id, :name, :address, :age, :gender, :phone_number,
                                    :icon, :clothes_image, users_attributes: [:id, :_destroy, :email, :stylist_id])
  end
  
  def set_stylist
    @stylist = Stylist.find(params[:id])
  end
end