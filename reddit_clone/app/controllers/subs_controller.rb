class SubsController < ApplicationController
  before_action :require_login, only: [:new, :create]
  before_action :require_moderator, only: [:edit, :update]
  def new
  end

  def create
    sub = Sub.new(sub_params)
    sub.moderator_id = current_user.id
    if sub.save
      # redirect_to sub_url(sub)
    else
      flash[:errors] = sub.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
  end

  def index
    @subs = Sub.all
  end

  def show
  end

  private
  def sub_params
    params.require(:sub).permit(:title, :description)
  end

  def require_moderator
    sub = Sub.find(params[:id])
    redirect_to subs_url unless sub && current_user.id == sub.moderator_id
  end
end
