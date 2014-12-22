class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :foo_function

  def foo_function
    @university_cate = UniversityCate.all
    @recent_news = University.select('id,title,created_at,image from News union select id,name,created_at,image').order('created_at DESC').limit(4)

    # = News.order('created_at DESC').limit(4)
    @video = Video.last(1)

  end
end
