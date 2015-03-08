json.array!(@reviews) do |review|
  json.extract! review, :id, :msg, :product_id, :user_id
  json.url product_review_url(@product, review, format: :json)
end
