class TopController < ApplicationController
  def index
    @blog = Blog.last
    @carrier = Carrier.last
    @study = Study.last
    @topic = Topic.last
    @bl = Blog.order(id: :desc).first(3)
  end
end
