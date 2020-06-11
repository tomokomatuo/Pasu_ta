class SeekersController < ApplicationController
  before_action :set_seeker, only: [:edit, :show, :update]
  def index
    @q = Seeker.ransack(params[:q])
    @seekers = @q.result(distinct: true)
  end
  
  def new
    @user = User.find(params[:format])
    # @seeker = Seeker.new
    @user.build_seeker
  end
  def create
    @seeker = Seeker.new(seeker_params)
    @seeker.id = current_user.id
    if @seeker.save
      redirect_to seeker_path(@seeker)
    else
      render :new
    end
  end
  
  def show
  end
  
  def edit
  end

  def update
  end

  private
  def seeker_params
    params(:user).permit(:id, :email, seekers_attributes: [:id, :name, :icon, 
                                 :clothes_image, :address, :age, :gender, :phone_number, :_destroy, :user_id])
  end
  def set_seeker
    @seeker = Seeker.find(params[:id])
  end
  def set_user
    @user = User.find(params[:id])
  end
end
