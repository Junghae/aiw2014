class HomeController < ApplicationController
  def index

  end

  def introduction

  end

  def news
    @news = News.all
  end

  def asia
    @cate = UniversityCate.all
    @asia = University.where(:university_cate_id => '1')
  end

  def europe

  end

  def america

  end

  def australia

  end

  def ranking

  end

  def contact

  end

  def news_detail
    @news_detail = News.find(params[:id])
  end





  def search

  end

  def sample
    
  end
end
