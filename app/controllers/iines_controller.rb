class IinesController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  def create
    @iine = Iine.new(iine_params)
    @blog = Blog.find(@iine.blog_id)
      if @iine.save
        respond_with @blog
      end
  end

  def destroy
    @iine = Iine.find(params[:id])
    @blog = Blog.find(@iine.blog_id)
    if @iine.destroy
       respond_with @blog
    end
  end

  private
  def iine_params
      params.require(:iine).permit(:user_id, :blog_id)
  end
end
