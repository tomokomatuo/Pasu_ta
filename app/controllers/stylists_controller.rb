class StylistsController < ApplicationController
  layout 'stylist'
  before_action :set_stylist, only: [:edit, :show, :update]
  def index
    @q = Stylist.ransack(params[:q])
    @stylists = @q.result(distinct: true)
  end
  
  def new
    @stylist = Stylist.new
  end
  
  def create
    # binding.irb
    @stylist = Stylist.new(stylist_params)
    @stylist.user_id = current_user.id
    
    if @stylist.save
      redirect_to stylist_path(@stylist.id)
    else
      render :new
    end
  end

  def show
    # @reviews = Reviews.all
  end
  
  def edit
  end

  def update
    if @stylist.update(stylist_params)
      redirect_to stylist_path(user.id)
    else
      render :edit
    end
  end

  private
  def stylist_params
    params.require(:stylist).permit(:id, :adviser, :name, :icon, :content, :clothes_image, :address, :age, :gender, :phone_number, :user_id)
  end

  def set_stylist
    @stylist = Stylist.find(params[:id])
  end
end