class StaticPagesController < ApplicationController
  def home
    @other = []
    @articles = Article.order(created_at: :desc).last(10)
    @other.push(Article.find_by(category_id: Category.find_by(name: 'International').id))
    @other.push(Article.find_by(category_id: Category.find_by(name: 'US News').id))
    @other.push(Article.find_by(category_id: Category.find_by(name: 'Society').id))
    @other.push(Article.find_by(category_id: Category.find_by(name: 'Culture').id))
    @other.push(Article.find_by(category_id: Category.find_by(name: 'Science & Technology').id))
    @other.push(Article.find_by(category_id: Category.find_by(name: 'Sports').id))
    @other.push(Article.find_by(category_id: Category.find_by(name: 'People').id))
    @other.push(Article.find_by(category_id: Category.find_by(name: 'Media').id))
  end

  def about
  end
end
