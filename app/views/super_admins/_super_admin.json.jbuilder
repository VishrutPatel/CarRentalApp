json.extract! super_admin, :id, :Name, :Password, :Email, :created_at, :updated_at
json.url super_admin_url(super_admin, format: :json)
