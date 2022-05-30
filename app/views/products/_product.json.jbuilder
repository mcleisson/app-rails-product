json.extract! product, :id, :title, :description, :value, :value_promotion, :status, :category_id, :tag_id, :created_at, :updated_at
json.url product_url(product, format: :json)
