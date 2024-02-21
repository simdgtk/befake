json.extract! befakepost, :id, :username, :profile_picture, :front_picture, :back_picture, :description, :location, :created_at, :updated_at
json.url befakepost_url(befakepost, format: :json)
