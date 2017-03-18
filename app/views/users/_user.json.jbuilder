json.extract! user, :id, :role, :name, :username, :birthdate, :gender, :phone, :country, :state, :city, :zipcode, :address1, :address2, :rank, :purchases, :sales, :created_at, :updated_at
json.url user_url(user, format: :json)
