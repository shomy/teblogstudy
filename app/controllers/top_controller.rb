class TopController < ApplicationController
  def index
    @blogs = Blog.all.order(id: :desc)
    @q = Blog.ransack(params[:q])
    @blogs = @q.result(distinct: true)
    @blog = Blog.last
    @carrier = Carrier.last
    @study = Study.last
    @topic = Topic.last
    @bl = Blog.order(id: :desc).first(3)
  end
end
