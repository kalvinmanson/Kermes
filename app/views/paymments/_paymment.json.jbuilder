json.extract! paymment, :id, :user_id, :product_id, :ammount, :shipping, :taxes, :fee, :cash, :status, :created_at, :updated_at
json.url paymment_url(paymment, format: :json)
