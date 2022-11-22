json.extract! authorization_request, :id, :created_at, :updated_at
json.url authorization_request_url(authorization_request, format: :json)
