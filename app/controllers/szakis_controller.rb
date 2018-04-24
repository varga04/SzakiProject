class SzakisController < ApplicationController
  before_action :find_szaki, only:[:show, :edit , :update , :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def index
    if params[:category].blank?
    @szakik = Szaki.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @szakik = Szaki.where(:category_id => @category_id).order("created_at DESC")
    end
  end
  def show
    if @szaki.reviews.blank?
      @average_review = 0
  else
    @average_review = @szaki.reviews.average(:rating).round(2)
    end
  end
  def new
    @szaki = current_user.szakis.build
    @categories = Category.all.map{ |d| [d.name, d.id] }
  end
  def create
    @szaki = current_user.szakis.build(szaki_params)
    @szaki.category_id = params[:category_id]

    if @szaki.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  def edit
    @categories = Category.all.map{ |d| [d.name, d.id] }
  end
  def destroy
  @szaki.destroy
    redirect_to root_path
  end
  def update
    @szaki.category_id = params[:category_id]
    if  @szaki.update(szaki_params)
      redirect_to szaki_path(@szaki)
    else
      render 'edit'
    end

  end
  private
  def szaki_params
    params.require(:szaki).permit(:title, :description, :worktype , :category_id)
  end
  def find_szaki
    @szaki = Szaki.find(params[:id])
  end
end
