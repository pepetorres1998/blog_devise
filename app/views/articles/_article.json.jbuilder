json.extract! article, :id, :title, :subtitle, :category_id, :content, :user_id, :created_at, :updated_at
json.url article_url(article, format: :json)
