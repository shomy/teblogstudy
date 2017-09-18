class IinesController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  def create
    @iine = Iine.new(iine_params)
      respond_to do |format|
        if @iine.save
          respond_with @iine
        end
      end
  end

  def destroy
    @iine = Iine.find(params[:id])
    if @iine.destroy
       respond_with @iine
    end
  end

  private
  def iine_params
      params.require(:iine).permit(:user_id, :blog_id)
  end
end
