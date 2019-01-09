class StaticPagesController < ApplicationController
  def home
    @other = []
    @articles = Article.order(created_at: :desc).last(5)
    Category.all.each do |category|
      @other.push(Article.find_by(category_id: category.id))
    end
  end

  def about
  end
end
