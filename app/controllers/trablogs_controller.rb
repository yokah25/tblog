class TrablogsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @trablogs = Trablog.all
    
  end

  def new
    @trablog = Trablog.new
  end

  def create
    Trablog.create(trablog_params)
  end

  private
  def trablog_params
    params.permit(:name, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
