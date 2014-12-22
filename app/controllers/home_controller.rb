class HomeController < ApplicationController
  def index
    @slide = SlideImage.order('created_at DESC').limit(4)
    @news = News.order('created_at DESC').limit(3)
    @area = UniversityCate.all

    @asia = University.where(university_cate_id: 1).last(3)
    @europe = University.where(university_cate_id: 2).last(3)
    @america = University.where(university_cate_id: 3).last(3)
    @australia = University.where(university_cate_id: 4).last(3)

  end

  def introduction

  end

  def news
    @news = News.order('created_at DESC').paginate(:page => params[:page], :per_page => 5)

  end

  def ranking

  end

  def contact
    render :layout => "contact"
  end

  def news_detail
    @news_detail = News.find(params[:id])
  end

  def area
    @cate = UniversityCate.find(params[:id])
    @area = University.where(university_cate_id: params[:id]).order('created_at DESC').paginate(:page => params[:page], :per_page => 5)

  end

  def university
    @university = University.find(params[:id])
  end



  def search

  end

  def sample

  end
end
