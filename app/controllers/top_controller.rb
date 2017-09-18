class TopController < ApplicationController
  def index
    @q = Blog.ransack(params[:q])
    @blogs = @q.result(distinct: true).order(id: :desc)
    @blog = Blog.last
    @carrier = Carrier.last
    @study = Study.last
    @topic = Topic.last
  end
end
