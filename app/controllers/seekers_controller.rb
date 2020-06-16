class SeekersController < ApplicationController
  layout 'seeker'
  before_action :set_seeker, only: [:edit, :show, :update]
  def index
    @q = Seeker.ransack(params[:q])
    @seekers = @q.result(distinct: true)
  end
  
  def new
    @seeker = Seeker.new
  end
  
  def create
    @seeker = Seeker.new(seeker_params)
    @seeker.user_id = current_user.id
    if @seeker.save
      redirect_to seeker_path(@seeker.id)
    else
      render :new
    end
  end

  def show
    @users = User.all
  end
  
  def edit
  end

  def update
    if @seeker.update(seeker_params)
      redirect_to seeker_path(@seeker)
    else
      render :edit
    end
  end

  private
  def seeker_params
    params.require(:seeker).permit(:id, :name, :icon, :content, :address, :age, :gender, :phone_number, :user_id)
  end

  def set_seeker
    @seeker = Seeker.find(params[:id])
  end
end
